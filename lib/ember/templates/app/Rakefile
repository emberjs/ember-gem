desc "Build the app"
task :build do
  require 'rake-pipeline'
  Rake::Pipeline::Project.new('Assetfile').invoke
end

desc "Run app tests"
task :test => :build do
  unless system("which phantomjs > /dev/null 2>&1")
    abort "PhantomJS is not installed. Download from http://phantomjs.org/"
  end

  cmd = "phantomjs tests/run-tests.js \"file://#{File.dirname(__FILE__)}/tests/index.html\""

  # Run the tests
  puts "Running project tests"
  success = system(cmd)

  require 'colored'
  if success
    puts "Tests Passed".green
  else
    puts "Tests Failed".red
    exit(1)
  end
end
