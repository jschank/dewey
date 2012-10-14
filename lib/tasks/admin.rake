desc "Start the postgresql server"
task :start_db_server do
  cmd = "pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
  `#{cmd}`
end

desc "Stop the postgresql server"
task :stop_db_server do
  cmd = "pg_ctl -D /usr/local/var/postgres stop -s -m fast"
  `#{cmd}`
end