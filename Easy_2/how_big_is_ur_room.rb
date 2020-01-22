# Build a program that asks a user
# for the length and width of a room
# in meters and then displays the are
# a of the room in both square meters
# and square feet.
#Note: 1 square meter == 10.7639 square feet
#Do not worry about validating the input at this time.

def prompt(message)
  puts ("=>#{message}")
end

prompt("Enter the length of the room in meters: ")

length_of_the_room_meters = gets().chomp().to_f

prompt("Enter the width of the room in meters:")

width_of_the_room_meters = gets().chomp().to_f

area_of_room_meters = length_of_the_room_meters * width_of_the_room_meters

area_of_room_square_feet = length_of_the_room_meters * width_of_the_room_meters*10.7639

puts "The area of the room is #{area_of_room_meters} square meters (#{area_of_room_square_feet} square feet)"
