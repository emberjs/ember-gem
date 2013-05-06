require 'rake-pipeline'
require 'rake-pipeline/middleware'

assetfile = File.expand_path('../../Assetfile', __FILE__)
use Rake::Pipeline::Middleware, Rake::Pipeline::Project.new(assetfile)

run Rack::Directory.new(File.dirname(__FILE__))
