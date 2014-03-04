require_relative "counter"

f=File.open(ARGV[0])
counter=Counter.new

should_split = true unless ARGV.any? {|s| s.include?('-spl')}
should_uppercase = true unless ARGV.any? {|s| s.include?('-up')}
should_subhyphen = true unless ARGV.any? {|s| s.include?('-sub')}
should_wcount = true unless ARGV.any? {|s| s.include?('-wct')}
should_pcount = true unless ARGV.any? {|s| s.include?('-pct')}
should_sort = true unless ARGV.any? {|s| s.include?('-sort')}

f.each_line do |m|
  counter.count_words(m) if should_wcount
  counter.count_punctuation(m) if should_pcount
  counter.separate_lines(m) if should_split
  counter.replace_spaces(m) if should_subhyphen
  counter.to_upcase(m) if should_uppercase
  counter.alphabetize(m) if should_sort
end

puts "would you like to write your results to a file or the screen?"
answer=$stdin.gets.chomp

if answer=="screen"; 
  counter.puts_results
  elsif answer=="file";
  counter.file_results
  else 
    puts "\n  I asked for a simple answer. \n\n  Monkeys can do this. \n\n  NO SOUP FOR YOU!!";
end
