#Write a program that asks the user to enter 
#an integer greater than 0, 
#then asks if the #user wants to determine 
#the sum or product of all numbers between 
#1 and the entered integer.

=begin 
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end 

def prompt(message)
	puts "=> #{message}"
end

def valid_number?(num)
	num.to_i > 0
end

def valid_compute_selection?(choice)
	choice == 's' || choice == 'p'
end

prompt("Please enter an integer greater than 0: ")
value = 0 


loop do 
	value = gets.chomp.to_i
	if valid_number?(value)
		break
	else
		puts "Please give us a valid number greater than 0"
	end
end


prompt("Enter 's' to compute the sum, 'p' to compute the product.")

compute_choice = " "
loop do 
	compute_choice = gets.chomp
	if valid_compute_selection?(compute_choice)
		break
	else
		puts "Please give us a valid selection 's' for sum and 'p' for product"
	end
end

consecutive_value = (1..value).to_a

product_consecutive_value = 1
consecutive_value.each do |i|
	product_consecutive_value = product_consecutive_value*i
end

if compute_choice == 's'
	prompt "The sum of the integers between 1 and #{value} is #{consecutive_value.sum}" 
elsif compute_choice == 'p'
	prompt "The product of the integers between 1 and #{value} is #{product_consecutive_value}"
	
end




