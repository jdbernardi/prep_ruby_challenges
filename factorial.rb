=begin

Write a method factorial which takes a number and returns the product of every number up to the current number multiplied together.

=end

#PROGRAM factorial(NUMBER)
def factorial(number)
#starting at 1
  i = 1

#while the numbers multiplied are less than the NUMBER
  while i <= number
#create a new number after 1 (.next)
    number_2 = i + 1
    puts i
      if number_2 > number
        break
      end
    total = number_2 * i 
    i += 1
    puts total
  end

end

#multiply those numbers together
#add those to a TOTAL
#repeat

puts "Enter a number"
number = gets.chomp.to_i

factorial(number)