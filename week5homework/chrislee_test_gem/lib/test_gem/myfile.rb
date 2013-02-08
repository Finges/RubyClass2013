module TestGem

	class MyFile
		def initialize file_location
			@file_location = file_location
		end

		def first file_location=@file_location
			File.open(file_location, "r"){|f| f.readlines[0].chomp}	
		end

		def last file_location=@file_location
			File.open(file_location,"r"){|f| f.readlines.last.chomp}	
		end
			
	end
	
end