
require_relative "tinybabylibrary"

f=File.open(ARGV[0])

split=[]
upcs=[]
hyph=""
wdct=0
ptct=0
alph=[]

should_split = true unless ARGV.any? {|s| s.include?('-spl')}
should_uppercase = true unless ARGV.any? {|s| s.include?('-up')}
should_subhyphen = true unless ARGV.any? {|s| s.include?('-sub')}
should_wcount = true unless ARGV.any? {|s| s.include?('-wct')}
should_pcount = true unless ARGV.any? {|s| s.include?('-pct')}
should_sort = true unless ARGV.any? {|s| s.include?('-sort')}

f.each_line do |m|
  split+=separate_line(m) if should_split 
  upcs+=upcase(m) if should_uppercase
  hyph+=replace_spaces(m) if should_subhyphen 
  wdct+=count_words(m) if should_wcount
  (alph+=sort(m)).sort! if should_sort
  ptct+=count_punct(m) if should_pcount 
end

puts "would you like to write your results to a file?"
answer=$stdin.gets.chomp

if answer=="no"; 
  puts_results(split,upcs,hyph,wdct,ptct,alph);
  puts "\nThanks, and have a nice day!"
  elsif answer=="yes";
    file_results(split,upcs,hyph,wdct,ptct,alph);
    puts "\nYour output is on the C: drive, in the folder named Homework, in the file marked Hw12output.txt \n\nThank you!";
  else 
    puts "\nIt is a simple yes or no. Monkeys can do this correctly. You disappoint me. Go home.";
end
