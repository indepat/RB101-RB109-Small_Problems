# Short Long Short

Write a method that takes two strings as  arguments, determines the longest of the two strings, and then returns  the result of concatenating the shorter string, the longer string, and  the shorter string once again. You may assume that the strings are of  different lengths.

Examples:

```ruby
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
```

<ins>**Solution**</ins>:

```ruby
def short_long_short(string_1, string_2)
  if string_1.size > string_2.size
    string_2 + string_1 + string_2
  else
    string_1 + string_2 + string_1
  end
end
```

<ins>**LaunchSchool**</ins>:

```ruby
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end
```

