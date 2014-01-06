# Update this program to keep a running tally of the same stats we were
# puts'ing in babylibrary v1.
#
# > A string here
# > Another string here
# > exit
#   A
#   string
#   here
#   Another
#   string
#   here
#
# EXTRA CREDIT! Rather than tallying up the strings, instead process each
# string and hold onto another form of data until the end, and print output
# from that.

require_relative "babylibrary"

def main(s)
  separate_line(s)
  upcase(s)
  replace_spaces(s)
  count_words(s)
  count_punct(s)
  sort(s)
end

s1=""

loop do  
  s=gets.chomp
  if s!="exit"
    s1<<s
  else
    main(s1)
    break
  end
end


