##
# The logging program determines how many logs a truck can carry if a log
# weighs 20kg/m and is either 0.25m, 0.5m or 1m and the truck can carry 1100kg.
#
# @author  Cameron Teed
# @version 1.0
# @since   2020-04-22
# frozen_string_literal: true

# Asks user for input
puts 'Enter log length (0.25, 0.5 or 1):'
# Gets the user input
length = gets.chomp

begin
  # Converts the input into a float value
  length = length.to_f

  # Determines whether the input meets the parameters
  if [0.25, 0.5, 1].include?(length)

    # Caclulates hows many logs can fit onto a truck
    logs = 55 / length

    # Prints out how many logs can fit onto a truck and their length
    puts "Therefore the truck will be able to take  #{logs} logs that are #{length} meter(s) in length."

  else

    # If the input does not match the parameters, it tells them they need to put in the right numbers
    puts 'Please enter 0.25, 0.5 or 1'
  end
rescue StandardError
  # If the input cannot be converted into a float, tell the user that they need to input the correct numbers
  puts 'Please enter 0.25, 0.5 or 1'
end
