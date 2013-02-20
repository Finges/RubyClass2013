module TestGem

	class MyFile
		def initialize file_location
			@file_location = file_location
		end

		def self.first file_location=@file_location
			if File.exist?(file_location)
				File.open(file_location, "r"){|f| f.readlines[0].chomp}	
			else
				raise RuntimeError, 'File Does not exist!'
			end
		end

		def self.last file_location=@file_location
			if File.exist?(file_location)
				File.open(file_location,"r"){|f| f.readlines.last.chomp}	
			else
				raise RuntimeError, 'File Does not exist!'
			end
		end
			
	end
	
end