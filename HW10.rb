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
    if should_split; splitting+=separate_line(s) end
    if should_uppercase; uppercase+=upcase(s) end
    if should_subhyphen; gsubhyphen+=replace_spaces(s) end
    if should_wcount; wordcount+=count_words(s) end
    if should_sort; (alphabetic+=sort(s)).sort! end
    if should_pcount; punctcount+=count_punct(s) end
  else
    puts_results(splitting,uppercase,gsubhyphen,wordcount,punctcount,alphabetic)
    break
  end
end

#create a set of variables that we will assign boolean values to, and those booleans will dictate whether we calculate and print each result
