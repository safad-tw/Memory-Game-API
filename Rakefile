require 'rspec/core/rake_task'

task :default => ['spec']

desc "Run Specs"
RSpec::Core::RakeTask.new :spec do |t|
t.pattern = "spec/*_spec.rb"
t.rspec_opts = ["--colour --format documentation"]
end
