require "spec_helper"

describe Nmax do
  let(:test_file_path) { File.dirname(__FILE__) + '/fixtures/test.txt' }
  let(:text) { File.open(test_file_path) }

  it ".nmax outputs an array of integers" do
    expect(subject.nmax(5, text).any? { |a| a.class == Fixnum }).to be_truthy
  end

  it ".nmax outputs n elements" do
    expect(subject.nmax(3, text).count).to eq(3)
  end

  it ".nmax correctly picks integers from stream" do
    expect(subject.nmax(5, text)).to eq([454543545454545, 453534545, 532545, 434343, 4545])
  end
end
