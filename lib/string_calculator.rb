require 'byebug'

class StringCalculator

	def add(numbers)
		return 0 if numbers.empty?
	    delimiter = ","
	    if numbers.include?(",\n") || numbers.include?("\n,")
    		raise "invalid input"
	    end
	    numbers = numbers.gsub("\n", delimiter)
	    num_list = numbers.split(delimiter).map(&:to_i)
	    num_list.sum
	end 

end 

calculator = StringCalculator.new
puts calculator.add("1,\n")  # Output: "invalid input (RuntimeError)"
