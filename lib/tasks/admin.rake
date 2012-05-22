desc "Create the administrator user for idewit."
task :create_admin => :environment do
  user = User.find_or_create_by_email(APP_CONFIG['admin_email'])
  user.password = user.password_confirmation = APP_CONFIG['admin_password']
  if user.save!
    puts "Successfully created user: #{user.email}, with password \"#{user.password}\""
  else
    puts "Failed to create admin user!"
  end
end