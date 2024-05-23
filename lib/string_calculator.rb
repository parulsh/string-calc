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

	    negatives = num_list.select { |num| num < 0 }
	    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
	    num_list.sum
	end 

end 

calculator = StringCalculator.new
puts calculator.add("1,-2,3")  # Output: "negative numbers not allowed: -2"
