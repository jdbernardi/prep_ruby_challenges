=begin
4. Combinations

Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.

> combinations([“on”,”in”],[“to”,”rope”])
=> [“onto”,”onrope”,”into”,”inrope”]

=end

#PROGRAM (array1, array 2)
def combinations(array1, array2)
#assign array1 to a var
array1 = array1
#assign array2 to a var
array2 = array2
#create a third array to store the combinations
array3 = Array.new

array1_index = 0

#perform loop until all the elements in array 1 have been touched
while array1_index < array1.length
#reset the second array for each pass
array2_index = 0

  while array2_index < array2.length
    #combine the two elements and add them to array3
    array3 << array1[array1_index] + array2[array2_index]
    #then go to the next element in array2
    array2_index = array2_index + 1
    #repeat until all elements in array2 have been touched
  end
#then go to the next element in array1
array1_index = array1_index + 1
#repeat the combination process above
end
#print array3
puts array3

end

combinations(["one","two","three"], ["two","two","three","four"])
