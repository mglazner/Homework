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
