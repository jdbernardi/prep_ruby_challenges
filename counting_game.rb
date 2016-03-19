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

#need to have a condition where if at last item in arr

#a count will be established = 1
count = 1
person_count = 0
#the end count is established
number_counting_to = number_counting_to
#set up count for making player array
i = 1
#an array of PERSONS will be created based on the # of players
number_of_players = number_of_players

persons = Array.new

while i <= number_of_players
  persons << ["Person #{i}:",]
  i += 1
end

puts persons.last

#each array will have the PERSON and the COUNT
#the COUNT will change, the PERSON will not


#until the number_counting_to is reached
while count <= number_counting_to
#start with the first person who COUNTs 1

#check if at the last element in the array
#if persons.index == count

last_element_check(persons)

    persons[person_count][1] = count
  #put a line saying PERSON 1 says COUNT
  puts "Person:#{person_count+1} Count:#{count}  "

#check to see if COUNT is divisible by 7 

#if COUNT is divisible by 7
if count % 7 == 0
  divisible_by_7(person_count, count, number_counting_to)
elsif count % 11 == 0
  divisible_by_11(person_count, count, number_counting_to)
end

  #the direction in the array will reverse

  #the next PERSON will increase the COUNT
#elsif the COUNT is divisble by 11
  #skip the PERSON in the array
  #the next PERSON will COUNT up
#else
  #the COUNT goes up
  #the PERSON in DIRECTION increments
#end

  person_count +=1 
  count += 1
end #end of while count <= number_counting_to


#puts "Person #{person_count} end at the count number : #{count-1}"
end

#=====================================================
#called when count % 7 == 0 // REVERSE DIRECTIONS
def divisible_by_7(person, count, number_counting_to)
  puts "7 called"

end

#=====================================================
#called when count % 11 == 0 // SKIP PERSON
def divisible_by_11(person, count, number_counting_to)
  puts "11 caled"

end

#=====================================================
#called to check if at the last element
def last_element_check(array)
  array.each.with_index do |x, index|
    if index == 0
      next
    elsif index < array.size - 1
      next
    else
      puts "last element"
    end
  end
end

puts "enter the number of players"
number_of_players = gets.chomp.to_i
puts "enter the number we're counting to"
number_counting_to = gets.chomp.to_i

counting_game(number_of_players, number_counting_to)