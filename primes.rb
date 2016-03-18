=begin

5. Primes

Write a method is_prime? which takes in a number and returns true if it is a prime number.

> is_prime?(7)
=> true
> is_prime?(14)
=> false

=end



#PROGRAM isPrime(NUMBER)
def isPrime(number)

#if a number is prime it will be divisible by only itself and 1
#start i = 1
i = 1
count = 0
#starting at 1 and up to the NUMBER
while i <= number
  #check if NUMBER % i == 0
  #add check to count to eliminate going through each number if > 2
  count > 2 ? break : 
  if number % i == 0
    #if it is then add to count
    count += 1
  end
    #else do nothing
    #increment i and loop again
i += 1
end
  #if the count is 2 then the number is prime
count == 2 ? puts("true") : puts("false")
  #return true to the user
  #else return false
end

puts "Enter a number to check if prime"
number = gets.chomp

isPrime(number.to_i)
