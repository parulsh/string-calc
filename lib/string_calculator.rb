require 'byebug'

class StringCalculator

	def add(numbers)
		return 0 if numbers.empty?
	    delimiter = ","
	    if numbers.include?(",\n") || numbers.include?("\n,")
    		raise "invalid input"
	    end
	    if numbers.start_with?("//")
	      parts = numbers.split("\n", 2)
	      delimiter = parts[0][2..-1]
	      numbers = parts[1]
	    end
	    numbers = numbers.gsub("\n", delimiter)
	    num_list = numbers.split(delimiter).map(&:to_i)
	    num_list.sum
	end 

end 

calculator = StringCalculator.new
puts calculator.add("//;\n1;2")  # Output: "3"
