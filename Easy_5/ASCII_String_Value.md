# ASCII String Value

Write a method that determines and returns the ASCII string value of a  string that is passed in as an argument.  The ASCII string value is the  sum of the ASCII values of every character in the string. (You may use  String#ord to determine the ASCII value of a character.)

<ins>**Test**</ins>:

```ruby
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
```

<ins>**Solution**</ins>:

```ruby
def ascii_value(string)
  array = string.chars
  array.map! do |char|
    char.ord
  end
  array.sum
end
```

<ins>**Launch School**</ins>:

```ruby
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
```