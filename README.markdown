# rake-gem-ghost

Help gem developers to test created gems — creates symlink from installed gem to current folder.

## Example

    require 'rake/gem_ghost_task'

    Rake::GemGhostTask.new # uses direcory name as gem name

    Rake::GemGhostTask.new('rake-gem-ghost')

## Copyright

Copyright (c) 2010 Ivan Kuchin. See LICENSE.txt for details.
