#Using the multiply method from the "Multiplying Two Numbers" 
#problem, write a method that computes 
#the square of its argument 
#(the square is the result of multiplying a number by itself).

def multiply(number)
	number * number
end

def square(number)
	multiply(number)
end

def power_4th(number)
	multiply(multiply(number))
end

square(5)
power_4th(5)
