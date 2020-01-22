#Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#You may not use any of the methods mentioned above.
#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
#Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

HEXADECIMAL = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(hexadecimal)
  hexadecimal_array = hexadecimal.upcase!.chars.map { |char| HEXADECIMAL[char]  }
  value = 0
  hexadecimal_array.each_with_index { |hexa,index| value = (16 ** index) + hexa}
  
end

hexadecimal_to_integer('4D9f')



HEXADECIMAL = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15, 
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

new_array = '7DE'.chars.reverse!.map { |char| HEXADECIMAL[char]  }
new_hash = {}
new_array.each_with_index { |char, index| new_hash[index] = char}
value = 0
new_array.map { |char, index| char = 16.pow(index) + char}





value = 0 
new_array.each_with_index{ |hexa, index| value = 10 ** index + hexa }
value





hexadecimal_array = hexadecimal.chars.map { |char| HEXADECIMAL[char]  }



4D9F = (4*16**)
