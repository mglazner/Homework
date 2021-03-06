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

require_relative "tinybabylibrary"

splitting=[]
uppercase=[]
gsubhyphen=""
wordcount=0
punctcount=0
alphabetic=[]

loop do  
  s=gets
  if s!="exit\n"
    separate_line(s,splitting)
    upcase(s,uppercase) 
    replace_spaces(s,gsubhyphen)
    wordcount+=count_words(s)
    punctcount+=count_punct(s)
    sort(s,alphabetic)
  else 
    puts_results(splitting,uppercase,gsubhyphen,wordcount,punctcount,alphabetic)
    break
  end
end