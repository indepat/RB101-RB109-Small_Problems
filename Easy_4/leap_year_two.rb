#The British Empire adopted the Gregorian Calendar in 1752, 
#which was a leap year. Prior to 1752, the Julian Calendar was used. 
#Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.
#Using this information, update the method from the previous exercise to 
#determine leap years both before and after 1752.

def leap_year?(year)

	if year < 1753
		leap_year_julian_calendar(year)
	else

	if year.modulo(400) == 0 
		true
	elsif year.modulo(100) == 0
	else
		year.modulo(4) == 0
	end
		
	end
end

def leap_year_julian_calendar(year)

	if year.modulo(4) == 0
		true
	else
		false		
	end
end

