Write a method that takes an integer, and converts it to a string representation.
You may not use any of the standard conversion methods available in Ruby, such as `Integer#to_s`, `String()`, `Kernel#format`, etc. You may, however, use `integer_to_string` from the previous exercise.

```ruby
NUMERICAL_CONVERT_STRING = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
}

def signed_integer_to_string(number)
  number_array = []

  if number == 0
    number_array = [0].join

  elsif number.negative?
      number_positive = number.abs
      while number_positive > 0
      quotient, remainder = number_positive.divmod(10)
      number_array << remainder
      number_positive = quotient
      number_array.reverse!
      end
    number_array.map! do |char|
    NUMERICAL_CONVERT_STRING[char]
    end
    number_array.insert(0, '-').join

  else
    while number > 0
      quotient, remainder = number.divmod(10)
      number_array << remainder
      number = quotient
      number_array.reverse!
      end
    number_array.map! do |char|
    NUMERICAL_CONVERT_STRING[char]
    end
    number_array.insert(0, '+').join
  
  end
end

=begin
signed_integer_to_string(4321)
signed_integer_to_string(-123)
signed_integer_to_string(0)
=end
```

<ins>**Test**</ins>:

```ruby
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
```