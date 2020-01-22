#Create a simple tip calculator.
#The program should prompt for a bill
#amount and a tip rate.
#The program must compute the tip
#and then display both the tip
# and the total amount of the bill.

def prompt(message)
  puts ("=> #{message}")
end

prompt "What is the bill?"
bill = gets.chomp.to_f

prompt "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = bill * (tip_percentage/100)
total = (bill + tip_amount)

def convert_two_decimal(money)
  format("%.2f", money)
end

puts "The bill is #{bill}"
puts "The tip is #{convert_two_decimal(tip_amount)}"
puts "The total is #{convert_two_decimal(total)}"
