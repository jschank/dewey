namespace :db do
  desc "Start the postgresql server"
  task :start do
    puts "Checking PostgreSQL Server..."
    if dbstatus 
    then puts "Server already running." 
    else
      puts "Starting PostgreSQL Server..."
      if system('pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start')
      then puts "Server started!"
      else puts "Could not start server!"
      end
    end
    puts "Done!"
  end

  desc "Stop the postgresql server"
  task :stop do
    puts "Checking PostgreSQL Server..."
    if !dbstatus 
    then puts "Server already stopped." 
    else
      puts "Stopping PostgreSQL Server..."
      if system('pg_ctl -D /usr/local/var/postgres stop -s -m fast') && !dbstatus
      then puts "Server stopped!"
      else puts "Could not stop server!"
      end
    end
    puts "Done!"
  end

  desc "Status of the postgresql server"
  task :status do
    dbstatus
  end
  
  def dbstatus
    system('pg_ctl -D /usr/local/var/postgres status')
  end
  
end