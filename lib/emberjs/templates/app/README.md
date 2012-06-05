Ember Skeleton
==============

A skeleton application framework using Ember.js and Rake Pipeline.

Running
-------

    $ bundle install
    $ bundle exec rackup # Open http://localhost:9292
    
Building
--------
    
    (Linux/Mac OS)
    $ export RAKEP_MODE="production"
    $ bundle exec rakep build
    
    (Windows)
    $ set RAKEP_MODE="production"
    $ bundle exec rakep build

App Structure
-------------

    ember-skeleton
    ├── Assetfile - App build file
    ├── Gemfile - Package dependencies for rakep/rack
    ├── Gemfile.lock - Here be dragons: don't touch, always include
    ├── app - App specific code
    │   ├── css - App CSS or SCSS (.scss)
    │   ├── lib - App code, *modularized during build*
    │   ├── modules - Module code, *already modularized*
    │   ├── plugins - Plugins (e.g. jquery.jsonrpc.js)
    │   │   └── loader.js - JS module loader
    │   ├── static - Static files, never touched, copied over during build
    │   ├── templates - Handlebars templates, *modularized during build*
    │   ├── tests - QUnit application tests
    │   └── vendor - Vendor code, *modularized during build*
    ├── assets - Built out asset files, minified in production
    │   ├── app.css - Built out app CSS/SCSS
    │   ├── loader.js - Built out JS module loader
    │   └── app.js - Built out app JS
    ├── config.ru - Rack development web server configuration
    ├── index.html - The app entry point
    ├── tests - Test scaffolding
    └── tmp - Temporary build files used by rakep
