
=begin
Let's take on a more challenging logic problem. Remember the counting game that you pseudocoded during the Pseudocoding Assignment? For a recap:

10 friends are sitting in a circle around a table and decide to play a new game. In it, they count up through the numbers from 1 to 100. The first person says "1", the second says "2" and so on... but with a few catches:

Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
Whenever the number is divisible by 11, they skip the next person for the following number. For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
Your job is to code a program which outputs each number and which person said it. Use it to show that player 1 will say the number "100".

Tips:

Remember to stick with brute force instead of trying to "figure out" the trick to the problem.
Name your variables well!
Ignore the skipping to start out with. Only add it when you're ready.
Advanced Option:

Make your method take two inputs -- the number of players and the number you're counting up to. Then see who says the last number each time!

=end

#PROGRAM counting_game(number_of_players, number_counting_to)




def counting_game(number_of_players, number_counting_to)

  #create variable of the count of which person we are on
  which_person = 1
  #create the variable of the count where the game will end
  count = 1
  #establish a boolean for direction - clockwise == true // counter-clockwise == false
  direction = true

  #until the number_counting_to is reached
  while count <= number_counting_to
  #start with the first person who COUNTs 1
    #puts direction
    puts "Person #{which_person} counts #{count}!"
  #we need to have a condition that tracks the total number of players, depending on the direction of the count it will need to go forward or backward

  #check conditions for 7
    if count % 7 == 0 
      direction = clockwise(direction)
    end

  if count % 11 != 0
    if which_person != number_of_players && direction == true
      which_person +=1
    elsif  which_person == number_of_players && direction == true
      which_person = 1
    elsif which_person == 1 && direction == false
      which_person = number_of_players
    elsif which_person != 1 && direction == false
      which_person -= 1
    end
  elsif count % 11 == 0
    if which_person == 1 && direction == false
      which_person = number_of_players - 1
    elsif which_person == 1 && direction == true
      which_person += 1
    elsif which_person == number_of_players && direction == true
      which_person = 2
    elsif which_person == number_of_players && direction == false
      which_person -= 2
    elsif which_person == number_of_players - 1 && direction == true
      which_person = 1
    elsif which_person <= number_of_players - 2 && which_person >= 3 && direction == true
      which_person += 2
    elsif which_person <= number_of_players - 2 && which_person >= 3 && direction == false
      which_person -= 2
    elsif which_person == 2 && direction == false
      which_person == number_of_players
    elsif which_person == 2 && direction == true
      which_person +=2
    end
  end
    count += 1
  end #end of while count <= number_counting_to
end

def clockwise(direction)
 direction = false ? direction == true : direction == false
end

puts "enter the number of players"
number_of_players = gets.chomp.to_i
puts "enter the number we're counting to"
number_counting_to = gets.chomp.to_i

counting_game(number_of_players, number_counting_to)