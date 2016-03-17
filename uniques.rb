=begin
 Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!

uniques([1,5,”frog”, 2,1,3,”frog”])
=> [1,5,”frog”,2,3]
=end

#PROGRAM uniques
#receive an array from the user
#check the length of the array

#start i (count) at 0





#while the count is less than the array length


def uniques(array)

index_1 = 0 
index_2 = 1

singletons_array = Array.new

while index_1 < array.length

#while starting with the first element up to the last element
  while index_2 < array.length
  #check if the first item equals the second item
    if array[index_1] == array[index_2]
      #if its equal, pop the item
      array.pop[index_1 + 1]
    end
  #else go to the next index
  index_2 += 1
end
  #increment the count
  index_1 += 1

end

print array

end

uniques([1,5,"frog", 2, 1, 3, "frog"])

