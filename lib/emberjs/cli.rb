require 'thor'
require 'emberjs/app_generator'

module Emberjs
  class CLI < Thor
    include Thor::Actions

    desc 'new PATH', 'Create a new Ember.js application'
    def new(path)
      Emberjs::AppGenerator.start([path])
    end
    
    desc 'build', 'Build the current Ember.js application'
    method_option :mode, :type => :string, :default => "debug", :aliases => ['-m'], :desc => "Build mode for compile. Either `debug` or `production`"
    def build
      if options[:mode] == "debug"
        ENV['RAKEP_MODE'] = "debug"
      else
        ENV['RAKEP_MODE'] = "production"
      end
    
      exec('bundle exec rakep build')
    end
  end
end
