# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ember/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dudley Flanders", "Devin Torres"]
  gem.email         = ["dudley@steambone.org", "devin@devintorr.es"]
  gem.description   = %q{Development tools for Ember.js}
  gem.summary       = %q{Development tools for Ember.js}
  gem.homepage      = "http://emberjgem.com/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ember"
  gem.require_paths = ["lib"]
  gem.version       = Ember::VERSION

  gem.add_dependency 'thor'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
end
