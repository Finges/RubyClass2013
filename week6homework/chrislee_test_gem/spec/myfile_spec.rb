$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'test_gem'

describe TestGem::MyFile do

	describe '#first' do
		context 'given valid file' do
			it "returns the firstline" do
				expected = "This is the first line"
				TestGem::MyFile.first("spec/test.txt").should eq expected
			end
		end
		
		context 'given invalid file' do
			it 'returns an exception' do
				expect {TestGem::MyFile.first("yayay")}.to raise_exception(RuntimeError, "File Does not exist!")
			end
		end
	end
	
	describe '#last' do
		context 'givin valid file' do 
			it "returns the last line in the file" do
				expected = "This is the last line"
				TestGem::MyFile.last("spec/test.txt").should eq expected
			end
		end

		context 'givin invalid file' do
			it 'returns an exception' do
				expect {TestGem::MyFile.last("yayaya")}.to raise_exception(RuntimeError, "File Does not exist!")
			end
		end
	end
	
end