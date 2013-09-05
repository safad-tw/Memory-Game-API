require 'rspec/core/rake_task'

task :default => ['spec']

desc "Run Specs"
RSpec::Core::RakeTask.new :spec do |t|
t.pattern = "spec/*_spec.rb"
# t.pattern = "random_number_generator.rb"
t.rspec_opts = ["--colour --format documentation"]
end
