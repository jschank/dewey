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
task :create_admin_heroku => :environment do
  username = ENV["admin_email"] || APP_CONFIG['admin_email']
  userpass = ENV["admin_password"] || APP_CONFIG["admin_password"]
  
  if (username.present? && userpass.present? )
    cmd = "heroku config:add admin_email=#{username} admin_password=#{userpass}"
    `#{cmd}`
  else
    puts "Administrator Username unknown" unless username.present?
    puts "Administrator Password unknown" unless userpass.present?
  end 
end