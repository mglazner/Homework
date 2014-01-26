require_relative "tinybabylibrary"

p ARGV

should_split = true unless ARGV.any? {|s| s.include?('-spl')}
should_uppercase = true unless ARGV.any? {|s| s.include?('-up')}
should_subhyphen = true unless ARGV.any? {|s| s.include?('-sub')}
should_wcount = true unless ARGV.any? {|s| s.include?('-wct')}
should_pcount = true unless ARGV.any? {|s| s.include?('-pct')}
should_sort = true unless ARGV.any? {|s| s.include?('-sort')}

splitting=[]
uppercase=[]
gsubhyphen=""
wordcount=0
punctcount=0
alphabetic=[]

loop do  
  s=$stdin.gets
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

