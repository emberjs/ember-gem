# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ember/version"

Gem::Specification.new do |s|
  s.name        = "ember"
  s.version     = Ember::VERSION
  s.authors     = ["Dudley Flanders", "Devin Torres"]
  s.email       = ["dudley@steambone.org"]
  s.homepage    = ""
  s.summary     = %q{Development tools for Ember.js}
  s.description = %q{Development tools for Ember.js}

  s.rubyforge_project = "ember"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'thor'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end
