#Build a program that displays
#when the user will retire and
#how many years she has to work
#till retirement.


def prompt(message)
  puts ("#{message}")
end

current_year = Time.now.year
prompt("What is your age?")
age = gets.chomp.to_i
prompt("At what age would you like to retire? ")
age_to_retire = gets.chomp.to_i
years_to_retire = age_to_retire - age
the_year_to_retire = current_year + years_to_retire

prompt ("It's #{current_year}. You will retire in #{the_year_to_retire}")
prompt ("You have only #{years_to_retire} years of work to go!")
