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
#punctcounter.calculate(m,ARGV)
gsubber.calculate(m,ARGV)
splitter.calculate(m,ARGV)
sorter.calculate(m,ARGV)
uppercase.calculate(m,ARGV)
end

if answer=="screen" 
  puts "\n"
  puts sorter.puts_results
  puts gsubber.puts_results
#  puts punctcounter.puts_results
  puts splitter.puts_results
  puts uppercase.puts_results
  puts wordcounter.puts_results

  elsif answer=="file"
  output=(File.open("results","a+"))
  wordcounter.file_results
  sorter.file_results
  gsubber.file_results
# pcount.file_results
  splitter.file_results
  uppercase.file_results
  puts "\n\n    Your results can be found on the C drive, under the Homework folder, in the file titled 'results'"

  else 
    puts "\n  I asked for a simple answer. \n\n  Monkeys can do this. \n\n  NO SOUP FOR YOU!!";
end
