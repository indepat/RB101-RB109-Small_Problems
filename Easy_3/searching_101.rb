W=begin Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.=end


def prompt(message)
	puts "=> #{message}"
end

number_array = []

prompt("Enter the 1st number: ")

number_01 = gets.chomp.to_i

number_array << number_01

prompt("Enter the 2nd number: ")

number_02 = gets.chomp.to_i

number_array << number_02

prompt("Enter the 3rd number: ")

number_03 = gets.chomp.to_i

number_array << number_03

prompt("Enter the 4th number: ")

number_04 = gets.chomp.to_i

number_array << number_04

prompt("Enter the 5th number: ")

number_05 = gets.chomp.to_i

number_array << number_05

prompt("Enter the last number: ")

number_check = gets.chomp.to_i

if number_array.any? {|number| number == number_check}
	prompt("The number #{number_check} appear in #{number_array}")
else
		prompt("The number #{number_check} doesn't appear in #{number_array}")
end

