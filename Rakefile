require 'rubygems'
require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rake-gem-ghost"
  gem.summary = %Q{Help gem developers to test created gems}
  gem.description = %Q{Help gem developers to test created gems — creates symlink from installed gem to current folder.}
  gem.homepage = "http://github.com/toy/rake-gem-ghost"
  gem.license = "MIT"
  gem.authors = ["Boba Fat"]
  gem.add_development_dependency "jeweler", "~> 1.5.1"
end
Jeweler::RubygemsDotOrgTasks.new

$: << File.join(File.dirname(__FILE__), 'lib')
require 'rake/gem_ghost_task'
Rake::GemGhostTask.new
