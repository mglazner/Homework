require_relative "pcounter"
require_relative "wcounter"
require_relative "gsubhyphen"
require_relative "split"
require_relative "sort"
require_relative "uppercase"

f=File.open(ARGV[0])
punctcounter=Pcounter.new
wordcounter=Wcounter.new
gsubber=GsubHyphen.new
splitter=Split.new
sorter=Sort.new
uppercase=Uppercase.new

puts "Would you like to write your results to a file or to the screen?"
answer=$stdin.gets.chomp

f.each_line do |m|
wordcounter.calculate(m,ARGV)
punctcounter.calculate(m,ARGV)
gsubber.calculate(m,ARGV)
splitter.calculate(m,ARGV)
sorter.calculate(m,ARGV)
uppercase.calculate(m,ARGV)
end

if answer=="screen" 
  puts "\n\n"
  puts sorter.alph; puts "-"*30
  puts gsubber.hyph; puts "-"*30
  puts punctcounter.pcount; puts "-"*30
  puts splitter.split; puts "-"*30
  puts uppercase.upcase; puts "-"*30
  puts wordcounter.wcount; puts"-"*30

  elsif answer=="file"
  output=(File.open("results","a+"))
  output.puts sorter.alph; output.puts "-"*30
  output.puts gsubber.hyph; output.puts "-"*30
  output.puts punctcounter.pcount; output.puts "-"*30
  output.puts splitter.split; output.puts "-"*30
  output.puts uppercase.upcase; output.puts "-"*30
  output.puts wordcounter.wcount; output.puts "-"*30
  puts "Your results can be found on the C drive, under the Homework folder, in the file titled 'results'"

  else 
    puts "\n  I asked for a simple answer. \n\n  Monkeys can do this. \n\n  NO SOUP FOR YOU!!";
end
