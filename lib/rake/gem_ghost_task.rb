module Rake
  class GemGhostTask < TaskLib
    attr_reader :name
    def initialize(name = nil)
      @name = name || Pathname.getwd.basename.to_s
      define
    end

  private

    def define
      desc "Replace system gem with symlink to this folder"
      task 'ghost' do
        if spec = Gem.source_index.find_name(name).sort_by(&:version).last
          gem_path = Pathname(spec.full_gem_path)
          current_path = Pathname.getwd.expand_path
          abort "#{gem_path.dirname} is not writable!" unless gem_path.dirname.writable?
          sh 'rm', '-r', gem_path
          sh 'ln', '-s', current_path, gem_path
        else
          abort 'Gem is not installed, install first'
        end
      end
    end
  end
end
