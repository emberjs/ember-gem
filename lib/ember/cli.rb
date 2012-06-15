require 'thor'
require 'ember/app_generator'
require 'ember/library_generator'

module Ember
  class CLI < Thor
    include Thor::Actions

    desc 'new PATH', 'Create a new Ember application'
    def new(path)
      Ember::AppGenerator.start([path])
    end
    
    desc 'library PATH', 'Create a new Ember library'
    def library(path)
      Ember::LibraryGenerator.start([path])
    end
  end
end
