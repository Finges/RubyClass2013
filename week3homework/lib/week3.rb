
class Week3
	A_CONSTANT = "I'm a class CONSTANT"

  def initialize
    @name = 'Brandon'
  end

	def name
		@name
	end

	def name= new_name
		@name = new_name
	end

	def halve array
		array.slice(0,array.length/2)
	end

	def halve! array
		test = array.slice(0,array.length/2)
		array = array.slice!(array.length/2,array.length/2)
		test
	end

	def even? test
		if test.to_i % 2 == 0
			return true
		else
			return false
		end
	end

	def configure (hash={})
		default = {path: './', version: "0.1.0", mode: "production"}.merge(hash)
	end

	def run_me arg1
		yield
	end

	def each_odd array
		array.each do |x|
			if x % 2 == 1
				yield x
			end
		end
		array.select{|x| x % 2 == 1}
	end
end
