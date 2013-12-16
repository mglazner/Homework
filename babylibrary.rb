#12-9-13 Lecture


#	Recall HW3
#	5	+# Print each word on a separate line
#	6	+# Print each word in uppercase on a separate line
#	7	+# Print the string with spaces replaced by "-"
#	8	+# Count the number of words in the string
#	9	+# Count puntucation marks in the string
#	10	+# Break the string into an array of single words, and print it in sorted order (one per line)
#	11	+
#	12	+### Find an array of the words that contain the letter "a"
#	13	+# => ["A", "And", "another", "y'all"]
#	14	\ No newline at end of file
 



def separate_line(v1)
  puts v1.split
  puts "_______________"
end

def upcase(v2)
  v2.split.each do |m|
    puts m.upcase
  end 
  puts "_______________"
end

def replace_spaces(v3)
  p v3.gsub(" ","-")
  puts "_______________"
end

def count_words(v4)
  puts v4.split.length
  puts "_______________"
end

def count_punct(v5)
  puts v5.count('.')+v5.count(',')+v5.count('!')+v5.count("'")
  puts "_______________"
end

def sort(v6)
  puts v6.split.sort
  puts "_______________"
end

def get_5_lines(v7)
  

