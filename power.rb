=begin

Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

=end

#PROGRAM power (base, exponent)

  #for exponent number of times
def power(base, exponent)
  base_array = Array.new

  exponent.times do 
    base_array << base
  end
  #multiply the base array
  #return the result
  puts base_array.inject(1) { |r, e| r * e }
end

puts "Enter the base"
base = gets.chomp.to_i
puts "Enter the exponent"
exponent = gets.chomp.to_i


power(base,exponent)