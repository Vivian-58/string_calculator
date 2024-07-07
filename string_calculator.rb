# In ruby we can store infinite no in a variable.
# but in some language we have limitation of integer storage,
# then we do all calculation making integer string. 

# string_calculator.rb
class StringCalculator
  def add(string_number)
    output = 0
    negative_integers = []
    string_number = string_number.split(/[,|;|\\n]/)
    string_number.each do |x|
      input = x.to_i
      if input < 0
        negative_integers << x
      else
        output += input
      end
    end
    if negative_integers.any?
      raise "negative numbers not allowed: #{negative_integers.join(',')}"
    else
      puts output
    end
  end
end

# execute_string_calculator.rb
require_relative 'string_calculator'

print "Enter a number string: "
input_string = gets.chomp

calculator = StringCalculator.new
calculator.add(input_string)