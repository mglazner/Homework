# Write a new Ruby file that reads five lines of input
# and runs your babylibrary methods on it.

# Super extra credit! Rewrite the above to take ANY number of lines
# until you tell it "exit"

require_relative "babylibrary"

def main(s)
  separate_line(s)
  upcase(s)
  replace_spaces(s)
  count_words(s)
  count_punct(s)
  sort(s)
end

5.times do
  v=gets
  main(v)
end

puts "Merry Christmas to all, and to all a good night!"  
