$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'
require 'fakefs/spec_helpers'


describe TestGem do

  it { should be_a Module }

 	describe '#init_config' do
	  it "creates a file" do
	  	include FakeFS::SpecHelpers
	  	TestGem.init_config
	  	File.exists?("config.yml").should eq true
	  end
		it "creates a yaml file with default values" do 
			include FakeFS::SpecHelpers
			expected = "---\ndefault_file_name: default_file.txt\nsupported_types:\n- txt\n- pdf\n"
			TestGem.init_config
			File.read("config.yml").to_s.should eq expected
	 	end
	end
 	describe '#configure' do
		it "displays a hash of all of the configurations" do
			expected = { 'default_file_name' => 'default_file.txt', 'supported_types' => [ 'txt', 'pdf' ]}
			TestGem.configure.should eq expected
		end
 	end
end
