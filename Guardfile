# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'ctags-bundler', :src_path => ["app", "lib", "spec/support"] do
  watch(/^(app|lib|spec\/support)\/.*\.rb$/)
  watch('Gemfile.lock')
end

# Note: The cmd option is now required due to the increasing number of ways
#       rspec may be run, below are examples of the most common uses.
#  * bundler: 'bundle exec rspec'
#  * bundler binstubs: 'bin/rspec'
#  * spring: 'bin/rsspec' (This will use spring if running and you have
#                          installed the spring binstubs per the docs)
#  * zeus: 'zeus rspec' (requires the server to be started separetly)
#  * 'just' rspec: 'rspec'
guard :rspec, cmd: 'bundle exec rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  watch(%r{^app/use_cases/(.+)\.rb$}) { |m| "spec/use_cases/#{m[1]}_spec.rb" }
  watch(%r{^app/repositories/(.+)\.rb$}) { |m| "spec/repositories/#{m[1]}_spec.rb" }
  watch(%r{^app/forms/(.+)\.rb$}) { |m| "spec/forms/#{m[1]}_spec.rb" }
  watch(%r{^app/entities/(.+)\.rb$}) { |m| "spec/entities/#{m[1]}_spec.rb" }
end

