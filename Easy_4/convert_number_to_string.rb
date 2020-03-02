#In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 
#In this exercise and the next, you're going to reverse those methods.
#Write a method that takes a positive integer or zero, and converts it to a string representation.
#You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
#Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

NUMERICAL_CONVERT_STRING = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
}

def integer_to_string(number)
  number_array = []
  if number == 0
    number_array == [0]
  else
    while number > 0
    number_1, remainder = number.divmod(10)
    number_array << remainder
    number = number_1
    number_array.reverse!
  end
end
  
number_array.map! do |char|
  NUMERICAL_CONVERT_STRING[char]
  end
  number_array.join
end

=begin
integer_to_string(4321) => '4321'
integer_to_string(0)    => '0'
integer_to_string(5000) => '5000'
=end
