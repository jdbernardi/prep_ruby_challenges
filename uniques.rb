=begin
 Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!

uniques([1,5,”frog”, 2,1,3,”frog”])
=> [1,5,”frog”,2,3]
=end

#PROGRAM uniques
def uniques(array)
  #create an array variable
  single_array = Array.new
  #go through each item in the array
  array.each { |x| 
    #if the array has the item, then don't add it
    single_array << x unless single_array.include?(x)}
    print "single: #{single_array}"

end

#grab an array from the user and split it up
puts "Please enter an array separated by spaces"
array = gets.chomp.split(" ")
uniques(array)

#uniques([1,5,"frog", 2, 1, 3, "frog"])

