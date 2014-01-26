#things to think about; you are going to want to get the file name from ARGV. where you do the gets is going to change. we won't need the exit because a file will have a natural end. 

require_relative "tinybabylibrary"

f=File.open(ARGV[0])

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

f.each_line do |m|
  splitting+=separate_line(m) if should_split 
  uppercase+=upcase(m) if should_uppercase
  gsubhyphen+=replace_spaces(m) if should_subhyphen 
  wordcount+=count_words(m) if should_wcount
  (alphabetic+=sort(m)).sort! if should_sort
  punctcount+=count_punct(m) if should_pcount 
end
  puts_results(splitting,uppercase,gsubhyphen,wordcount,punctcount,alphabetic)

  
