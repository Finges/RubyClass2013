$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

require 'version'
require 'hello'
require 'myfile'
require 'yaml'
module TestGem

	def self.init_config
		def_config = { 'default_file_name' => 'default_file.txt', 'supported_types' => [ 'txt', 'pdf' ]}	
		File.open("./config.yml", "w") do |file|
			file.write(def_config.to_yaml)
		end
	end

	def self.configure
		YAML::load( File.open("./config.yml"))
	end
end