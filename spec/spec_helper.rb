require 'pry'
require 'stringio'

module EmberjsSpecHelpers
  def capture_io
    original_stdout, original_stderr = $stdout, $stderr
    $stdout, $stderr = StringIO.new, StringIO.new
    yield
    return $stdout.string, $stderr.string
  ensure
    $stdout, $stderr = original_stdout, original_stderr
  end

end

RSpec::Matchers.define :have_contents do |expected|
  match do |file|
    actual = file.read
    case expected
    when String; expected == actual
    when Regexp; expected =~ actual
    end
  end
end

RSpec.configure do |c|
  c.include EmberjsSpecHelpers

  original = Dir.pwd

  def tmp
    File.expand_path("../tmp", __FILE__)
  end

  c.before do
    FileUtils.rm_rf(tmp)
    FileUtils.mkdir_p(tmp)
    Dir.chdir(tmp)
  end

  c.after do
    Dir.chdir(original)
  end
end
