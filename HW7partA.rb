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

v=gets
i=0

while i <= 3 do
  main(v)
  v=gets
  i += 1
end

puts "Merry Christmas to all, and to all a good night!"  
