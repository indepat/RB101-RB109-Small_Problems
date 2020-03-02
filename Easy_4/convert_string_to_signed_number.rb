#Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; 
#if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.
#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
#You may, however, use the string_to_integer method from the previous lesson.

STRING_CONVERT_NUMERICAL = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 
}

def string_to_signed_number(string)
  string_array = string.chars
  if string_array[0] == '-'
    sign = string_array.shift
  elsif string_array[0] == '+'
    sign = string_array.shift
  else
    string_array
  end
  
  digits = string_array.map { |char| STRING_CONVERT_NUMERICAL[char]  }
  value = 0
  digits.each { |digit| value = 10* value + digit}
  if sign == '-'
    value * (-1)
  else
    value
  end
end

=begin
string_to_signed_number('-570') #=> -570
string_to_signed_number('+570') #=>  570
string_to_signed_number('570')  #=>  570
=end