#Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#You may not use any of the methods mentioned above.
#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
#Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

STRING_CONVERT_NUMERICAL = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 
}

def string_to_integer(string)
  digits = string.chars.map { |char| STRING_CONVERT_NUMERICAL[char]  }
  value = 0
  digits.each { |digit| value = 10* value + digit}
  value  
end




