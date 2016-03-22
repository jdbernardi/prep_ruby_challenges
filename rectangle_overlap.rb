=begin

6. Rectangle Overlap

Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers.

> overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
=> true
> overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
=> false

=end

#PROGRAM overlap(rectangle_1, rectangle_2)

#compare the x and y coordinates of the arrays
#taking the max and min of each array


def overlap(rect1, rect2)

  x_min = [rect1[0][0], rect2[0][0]].max
  #puts "#{[rect1[0][0], rect2[0][0]]}"
  #puts "x_min: #{x_min}"
  x_max = [rect1[1][0], rect2[1][0]].min
  #puts "#{[rect1[1][0], rect2[1][0]]}"
  #puts "x_max: #{x_max}"

  y_min = [rect1[0][1], rect2[0][1]].max
  #puts "#{[rect1[0][1], rect2[0][1]]}"
  #puts "y_min: #{y_min}"
  y_max = [rect1[1][1], rect2[1][1]].min
  #puts "#{[rect1[1][1], rect2[1][1]]}"
  #puts "y_max: #{y_max}"

  if ((x_max <= x_min) || (y_max <= y_min))
  return nil
  else return [[x_min, y_min], [x_max, y_max]]
  end
end

#result = overlap([[0,1],[2,2]], [[2,1],[3,3]])

puts "Enter the coordinates for Rectangle 1 one at a time. Hit enter after each entry"
x1 = gets.chomp.to_i
y1 = gets.chomp.to_i
x2 = gets.chomp.to_i
y2 = gets.chomp.to_i

puts "Please enter the same for Rectangle 2"

x3 = gets.chomp.to_i
y3 = gets.chomp.to_i
x4 = gets.chomp.to_i
y4 = gets.chomp.to_i

result = overlap([[x1,y1],[x2,y2]], [[x3,y3],[x4,y4]])

if result != nil
  puts "overlap"
  print result
else puts "not overlapping"
end

