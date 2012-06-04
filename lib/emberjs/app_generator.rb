require 'thor/group'

module Emberjs
  class AppGenerator < Thor::Group
    include Thor::Actions

    source_root File.expand_path('../templates/app', __FILE__)

    argument :path

    def name
      File.basename(path)
    end

    def title
      name.capitalize
    end

    def create
      self.destination_root = File.expand_path(path, destination_root)
      directory '.'
    end
  end
end

