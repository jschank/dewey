desc "Create the administrator user for idewit."
task :create_admin => :environment do
  username = ENV["admin_email"] || APP_CONFIG['admin_email']
  userpass = ENV["admin_password"] || APP_CONFIG["admin_password"]
  
  if (username.present? && userpass.present? ) 
    user = User.find_or_create_by_email(username.dup)
    user.password = user.password_confirmation = userpass.dup
    if user.save!
      puts "Successfully created user: #{user.email}, with password \"#{user.password}\""
    else
      puts "Failed to create admin user!"
    end
  else
    puts "Administrator Username unknown" unless username.present?
    puts "Administrator Password unknown" unless userpass.present?
  end 
end

desc "Create the administrator user for idewit on Heroku."
task :update_heroku_env => :environment do
  username = ENV["admin_email"] || APP_CONFIG['admin_email']
  userpass = ENV["admin_password"] || APP_CONFIG["admin_password"]  
  if (username.present? && userpass.present? )
    cmd = "heroku config:add admin_email=#{username} admin_password=#{userpass}"
    `#{cmd}`
  else
    puts "Administrator Username unknown" unless username.present?
    puts "Administrator Password unknown" unless userpass.present?
  end 

  s3_access_key_id = ENV["s3_access_key_id"] || APP_CONFIG['s3_access_key_id']
  s3_secret_access_key = ENV["s3_secret_access_key"] || APP_CONFIG["s3_secret_access_key"]
  s3_bucket = ENV["s3_bucket"] || APP_CONFIG["s3_bucket"]
  if (s3_access_key_id.present? && s3_secret_access_key.present?  && s3_bucket.present? )
    cmd = "heroku config:add s3_access_key_id=#{s3_access_key_id} s3_secret_access_key=#{s3_secret_access_key} s3_bucket=#{s3_bucket}"
    `#{cmd}`
  else
    puts "s3_access_key_id unknown" unless s3_access_key_id.present?
    puts "s3_secret_access_key unknown" unless s3_secret_access_key.present?
    puts "s3_bucket unknown" unless s3_bucket.present?
  end 
end