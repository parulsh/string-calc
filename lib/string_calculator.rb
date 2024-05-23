require 'byebug'

class StringCalculator

	def add(numbers)
		return 0 if numbers.empty?
	    delimiter = ","
	    num_list = numbers.split(delimiter).map(&:to_i)
	    num_list.sum
	end 

end 

calculator = StringCalculator.new
puts calculator.add("1,2")          # Output: 3
