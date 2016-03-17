=begin

Write a method factorial which takes a number and returns the product of every number up to the current number multiplied together.

=end

#PROGRAM factorial(NUMBER)
def factorial(number) 
  #create an array
  factorial_array = Array.new


  #starting at 1 and ending at the number

  for i in 1..number 
  #push each number to that array
    factorial_array << i
  end
  
  #multiply the numbers with an inject
    total = factorial_array.inject(1) { |mem, var| mem * var }
    puts total  

end


puts "Enter a number"
number = gets.chomp.to_i

factorial(number)