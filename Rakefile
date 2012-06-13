require "nanoc/tasks"

# task :default => :start
 
desc "Start Up"
task :start do
  raise unless File.exist?('Rakefile')
   
  # SDK start
  # TODO Permission denied
  sh "~/bin/DC_SDK/bin/startServer.sh > log/sdk.log &"
   
  # Guard start
  sh "bundle exec guard --no-vendor > log/guard.log &"
end

desc "Auto Compile"
task :ac do
  system('nanoc', 'autocompile')
end

desc "Watch"
task :watch do
  system('nanoc', 'watch')
end