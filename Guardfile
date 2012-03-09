# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# guard 'livereload' do
#   watch(%r{\.(php|xml)})
#   watch(%r{assets/.+\.(css|js)})
# end

# guard 'sass', :input => 'assets/stylesheets'

# guard 'sass' do
#   watch(%r{assets/stylesheets/(.+\.s[ac]ss)$})
# end


guard 'haml', :input => 'src', :output => 'public' do
  watch(%r{^src/.+(\.php\.haml)})
end

guard 'compass' do
  watch(%r{^src/(.*)\.s[ac]ss})
end

guard 'livereload' do
  # watch(%r{src/.+\.(erb|haml|slim)})
  watch(%r{public/.+\.(css|js|html|php|xml)})
end
