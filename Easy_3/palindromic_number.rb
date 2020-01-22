#Write a method that returns true if its integer argument is palindromic, 
#false otherwise. 
#A palindromic number reads the same forwards and backwards.


def palindromic_number?(integer)

	integer == integer.to_s.chars.map(&:to_i).reverse.join.to_i
	
end

palindromic_number?(34543) # true
palindromic_number?(123210) # false
palindromic_number?(22) # true
palindromic_number?(5) # true