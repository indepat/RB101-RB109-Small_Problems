# Write a program that will ask a user for an input of a word or 
# multiple words and give back the number of characters. 
# Spaces should not be counted as a character.


def prompt(message)
	puts "=> #{message}"
end

prompt("Please write word or multiple words: ")

input_word = gets.chomp
input_word.delete! (" ")
number_of_characters = input_word.chars.count

prompt("There are #{number_of_characters} characters in #{input_word}")

