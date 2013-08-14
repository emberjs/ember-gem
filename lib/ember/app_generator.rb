require 'thor/group'
require 'ember/source'
require 'ember/data/source'
require 'handlebars/source'

module Ember
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

      vendor_path = File.join(self.destination_root, 'app', 'vendor')
      copy_file(::Ember::Source.bundled_path_for('ember.js'), File.join(vendor_path, 'ember.js'))
      copy_file(::Ember::Data::Source.bundled_path_for('ember-data.js'), File.join(vendor_path, 'ember-data.js'))
      copy_file(::Handlebars::Source.bundled_path, File.join(vendor_path, 'handlebars.js'))
    end
  end
end

