require_relative "tinybabylibrary"

should_split = true
should_uppercase = true
#...

splitting=[]
uppercase=[]
gsubhyphen=""
wordcount=0
punctcount=0
alphabetic=[]

loop do  
  s=gets
  if s!="exit\n"
    splitting+=separate_line(s)
    uppercase+=upcase(s) 
    gsubhyphen+=replace_spaces(s)
    wordcount+=count_words(s)
    (alphabetic+=sort(s)).sort!
    punctcount+=count_punct(s)
  else
    puts_results(splitting,uppercase,gsubhyphen,wordcount,punctcount,alphabetic)
    break
  end
end

# create a set of variables that we will assign boolean values to, and those booleans will dicatate whether we calculate and print each result