require_relative "tinybabylibrary"

should_split = true
should_uppercase = true
should_subhyphen = true
should_wcount = true
should_pcount = true
should_sort = true

splitting=[]
uppercase=[]
gsubhyphen=""
wordcount=0
punctcount=0
alphabetic=[]

loop do  
  s=gets
  if s!="exit\n"
    splitting+=separate_line(s) if should_split
    splitting+=separate_line(s) if should_split 
    uppercase+=upcase(s) if should_uppercase
    gsubhyphen+=replace_spaces(s) if should_subhyphen 
    wordcount+=count_words(s) if should_wcount
    (alphabetic+=sort(s)).sort! if should_sort
    punctcount+=count_punct(s) if should_pcount 
  else
    puts_results(splitting,uppercase,gsubhyphen,wordcount,punctcount,alphabetic)
    break
  end
end

#create a set of variables that we will assign boolean values to, and those booleans will dictate whether we calculate and print each result
