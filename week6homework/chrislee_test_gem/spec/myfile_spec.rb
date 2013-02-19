$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'test_gem'

describe TestGem::MyFile do

it "#first should return the firstline" do
	expected = "This is the first line"
#	subject = TestGem::MyFile.new "test.txt"
#	subject.first("spec/test.txt").should eq expected	
	TestGem::MyFile.first("spec/test.txt")
end

it "#last should return the last line in the file" do
	expected = "This is the last line"
#	subject = TestGem::MyFile.new "test.txt"
#	subject.last("spec/test.txt").should eq expected
	TestGem::MyFile.last("spec/test.txt")
end
	
end