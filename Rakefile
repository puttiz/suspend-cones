require "nanoc/tasks"

task :default => [:sdk, :guard, :watch]
 
desc "SDK Start"
task :sdk do
	# sh "~/bin/DC_SDK/bin/startServer.sh > tmp/sdk.log &"
	sh "~/bin/tae-sdk/TAE_SDK/bin/startServer.sh > tmp/sdk.log &"
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