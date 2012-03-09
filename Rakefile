task :default => :start

desc "Start Up"
task :start do
  raise unless File.exist?('Rakefile')
  
  # SDK start
  # TODO Permission denied
  # sh "~/Coral/DC_SDK/bin/startServer.sh"
  
  # Guard start
  sh "bundle exec guard --no-vendor"
end