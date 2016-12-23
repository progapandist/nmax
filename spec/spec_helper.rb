$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "nmax"

# REMOVE LATER! 
module Helpers
  # Replace standard input with faked one StringIO.
  def fake_stdin(*args)
    begin
      $stdin = StringIO.new
      $stdin.puts(args.shift) until args.empty?
      $stdin.rewind
      yield
    ensure
      $stdin = STDIN
    end
  end
end

RSpec.configure do |conf|
  conf.include(Helpers)
end
