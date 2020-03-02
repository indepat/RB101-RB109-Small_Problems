# What Century is That?

Write a method that takes a year as input and returns the century.  The return value should be a string that  begins with the century number, and ends with `st`, `nd`, `rd`, or `th` as appropriate for that number.

New centuries begin in years that end with `01`. So, the years 1901-2000 comprise the 20th century.

Examples:

```ruby
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
```

```ruby
def century_year(year)

	century_year = year.div(100) + 1
	century_year -= 1 if year % 100 == 0
	century_year.to_s + century_suffix(century_year)

end

def century_suffix(century_year)

	return "th" if century_year.to_s.include?('11') || 
				   century_year.to_s.include?('12') ||
				   century_year.to_s.include?('13')
	last_digit = century_year % 10

	case last_digit	
	when 1 then "st"
	when 2 then "nd"
	when 3 then "rd"
	else "th"
	end

end
```

