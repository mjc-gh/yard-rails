require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:development, :doc)
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  gem.name = 'yard-rails'
  gem.license = 'MIT'
  gem.summary = %Q{A YARD plugin for parsing custom Rails syntax.}
  gem.description = %Q{Rails includes several bits of custom markup (such as the new "cattr_*" methods).  This plugin for YARD adds support for this custom markup, which otherwise is parsed incorrectly.}
  gem.email = 'charles@charlespence.net'
  gem.homepage = 'http://github.com/cpence/yard-rails'
  gem.authors = ['Charles H. Pence']
  gem.has_rdoc = 'yard'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:rspec) do |spec|
  spec.rspec_opts = ['--options', '.specopts']
end

task :test => :rspec
task :spec => :rspec
task :default => :rspec

require 'yard'
YARD::Rake::YardocTask.new
