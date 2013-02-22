# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember/version'

Gem::Specification.new do |gem|
  gem.name          = "ember"
  gem.version       = Ember::VERSION
  gem.authors       = ["Dudley Flanders", "Devin Torres"]
  gem.email         = ["dudley@steambone.org", "devin@devintorr.es"]
  gem.description   = %q{Development tools for Ember.js}
  gem.summary       = %q{Development tools for Ember.js}
  gem.homepage      = "http://emberjs.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'thor'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
end
