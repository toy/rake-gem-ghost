require 'rubygems'
require 'rake'
require 'jeweler'
$: << File.join(File.dirname(__FILE__), 'lib')
require 'rake/gem_ghost_task'

name = 'rake-gem-ghost'

Jeweler::Tasks.new do |gem|
  gem.name = name
  gem.summary = %Q{Help gem developers to test created gems}
  gem.description = %Q{Help gem developers to test created gems — creates symlink from installed gem to current folder.}
  gem.homepage = "http://github.com/toy/#{name}"
  gem.license = 'MIT'
  gem.authors = ['Ivan Kuchin']
  gem.add_runtime_dependency 'rake'
  gem.add_development_dependency 'jeweler', '~> 1.5.1'
end
Jeweler::RubygemsDotOrgTasks.new
Rake::GemGhostTask.new
