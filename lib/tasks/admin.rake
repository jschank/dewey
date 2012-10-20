namespace :db do
  desc "Start the postgresql server"
  task :start do
    cmd = "pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
    `#{cmd}`
  end

  desc "Stop the postgresql server"
  task :stop do
    cmd = "pg_ctl -D /usr/local/var/postgres stop -s -m fast"
    `#{cmd}`
  end
end