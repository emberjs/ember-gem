require 'thor'
require 'emberjs/app_generator'

module Emberjs
  class CLI < Thor
    include Thor::Actions

    desc 'new PATH', 'Create a new Ember.js application'
    def new(path)
      Emberjs::AppGenerator.start([path])
    end
  end
end
