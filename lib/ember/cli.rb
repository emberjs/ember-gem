require 'thor'
require 'ember/app_generator'

module Ember
  class CLI < Thor
    include Thor::Actions

    desc 'new PATH', 'Create a new Ember application'
    def new(path)
      Ember::AppGenerator.start([path])
    end
  end
end
