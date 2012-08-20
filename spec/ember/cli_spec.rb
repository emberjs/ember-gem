require 'spec_helper'
require 'ember/cli'

describe Ember::CLI do
  def ember(*args)
    capture_io {
      Ember::CLI.start(args)
     }
  end

  describe "new" do
    shared_examples "a new app" do
      before do
        ember('new', app_path)
      end

      def path(*segments)
        Pathname.new(File.join(tmp, app_path, *segments))
      end

      let(:app_name) { File.basename(app_path) }

      it 'creates root files' do
        path.should exist
        path('.gitignore').should exist
        path('Assetfile').should exist
        path('config.ru').should exist
        path('Gemfile').should exist
        path('Guardfile').should exist
        path('index.html').should exist
        path('LICENSE').should exist
        path('Rakefile').should exist
        path('README.md').should exist
      end

      it 'creates app/css files' do
        path('app/css').should exist
        path('app/css/bootstrap.css').should exist
        path('app/css/main.css').should exist
      end

      it 'creates app/lib files' do
        path('app/lib').should exist
        path('app/lib/controllers').should exist
        path('app/lib/controllers/application.js').should exist
        path('app/lib/views').should exist
        path('app/lib/views/application.js').should exist
        path('app/lib/models').should exist
        path('app/lib/controllers.js').should exist
        path('app/lib/core.js').should exist
        path('app/lib/env.js').should exist
        path('app/lib/ext.js').should exist
        path('app/lib/main.js').should exist
        path('app/lib/router.js').should exist
        path('app/lib/store.js').should exist
        path('app/lib/views.js').should exist
      end

      it 'creates app/modules files' do
        path('app/modules').should exist
      end

      it 'creates app/plugins files' do
        path('app/plugins').should exist
        path('app/plugins/loader.js').should exist
      end

      it 'creates app/static files' do
        path('app/static').should exist
        path('app/static/img').should exist
        path('app/static/img/glyphicons-halflings.png').should exist
        path('app/static/img/glyphicons-halflings-white.png').should exist
      end

      it 'creates app/templates files' do
        path('app/templates').should exist
        path('app/templates/application.handlebars').should exist
      end

      it 'creates app/tests files' do
        path('app/tests').should exist
        path("app/tests/#{app_name}_tests.js").should exist
      end

      it 'creates app/vendor files' do
        path('app/vendor').should exist
        path('app/vendor/jquery.js').should exist
        path('app/vendor/handlebars.js').should exist
        path('app/vendor/ember.js').should exist
        path('app/vendor/ember-data.js').should exist
      end

      it 'creates tests/ files' do
        path('tests').should exist
        path('tests/qunit').should exist
        path('tests/qunit/qunit.css').should exist
        path('tests/qunit/qunit.js').should exist
        path('tests/index.html').should exist
        path('tests/run-tests.js').should exist
      end
    end

    context "given a name" do
      let(:app_path) { "inky" }
      include_examples "a new app"
    end

    context "given a path" do
      let(:app_path) { "path/to/inky" }
      include_examples "a new app"
    end
  end
end
