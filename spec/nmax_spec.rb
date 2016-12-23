require "spec_helper"

describe Nmax do
  let(:test_file_path) { File.dirname(__FILE__) + '/fixtures/test.txt' }

  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  it "correctly finds numbers in text" do
    expect(subject.nmax(5, test_file_path)).to eq(['2'])
  end
end

# REMOVE LATER!
describe "standard input" do
  it "should receive `foobar`" do
    fake_stdin("foobar") do
      input = gets.to_s.chomp.strip
      input.should == "foobar"
    end
  end
end
