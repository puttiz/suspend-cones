require "nanoc/tasks"

task :default => [:sdk, :guard, :watch]
 
desc "SDK Start"
task :sdk do
  sh "~/bin/tae-sdk/TAE_SDK/bin/rstartServer.sh > tmp/sdk.log &"
end

desc "Prune"
task :prune do
  sh "nanoc prune --yes"
  # system('nanoc', 'prune --yes')
end

desc "Watch"
task :watch do
  system('nanoc', 'watch')
end

desc "Guard"
task :guard do
  sh "bundle exec guard --no-vendor > tmp/guard.log &"
end

desc "Dev"
task :dev do
  sh "bundle exec guard --no-vendor > tmp/guard.log &"
  sh "nanoc watch"
end

desc 'Compress all stylesheet files'
task :css do
  require 'yui/compressor'
  compressor = YUI::CssCompressor.new

  Dir['output/**/*.css'].each do |stylesheet|
    puts "Compressing Stylesheet: #{stylesheet}"
    css = File.read(stylesheet)
    File.open(stylesheet, 'w') do |file|
      file.write(compressor.compress(css))
    end
  end
end