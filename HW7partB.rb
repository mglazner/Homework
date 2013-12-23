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

s=gets

#until s=="exit\n" 
#  main(s)
#  s=gets
#end


#while s!="exit\n"
#  main(s)
#  s=gets
#end

loop do 
  main(s)
  s=gets
  break if s=="exit\n"
end

# Hallelujah! I tried a dozen ways, some of which are above, but NOTHING worked, and I couldn't figure out why. Google failed me, even. 
# Then I sheepishly remembered... I am inputting a \n even if I can't see it... Baaaa. :)