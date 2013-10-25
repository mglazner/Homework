# Your challenge, should you choose to accept it!
#
# Create an array with the numbers 10 to 1 in reverse order
# Re-arrange them in sorted order
# puts the results
# puts the first 5 elements in the array

# Start the shell with
# C:Sites>irb

# Run your file with
# C:Sites>ruby jason.rb

# Another line goes here for git!


 megan=[10,9,8,7,6,5,4,3,2,1]
# => [10,9,8,7,6,5,4,3,2,1]	# building the array


 megan.sort
# => [1,2,3,4,5,6,7,8,9,10]	#sorting the array numerically


 megan
# => [10,9,8,7,6,5,4,3,2,1]	#showing that sorting doesn't change the array


 megan.sort!
# => [1,2,3,4,5,6,7,8,9,10]	#trying the sort! function


 megan
# => [1,2,3,4,5,6,7,8,9,10]	#oh look, it changed the array


 megan[0..4]
# => [1,2,3,4,5]		#looking at the first five objects in array


 megan
# => [1,2,3,4,5,6,7,8,9,10]	#array is unchanged

 
 jodi=megan[0..4]		#a new array
# => [1,2,3,4,5],

 
 jodi.reverse!
# => [5,4,3,2,1]	

