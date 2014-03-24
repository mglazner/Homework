require_relative "pcounter"
require_relative "wcounter"
require_relative "gsubhyphen"
require_relative "split"
require_relative "sort"
require_relative "uppercase"

f=File.open(ARGV[0])
output=(File.open("results","a+"))
punctcounter=Pcounter.new
wordcounter=Wcounter.new
gsubber=GsubHyphen.new
splitter=Split.new
sorter=Sort.new
uppercase=Uppercase.new
input=[punctcounter,wordcounter,gsubber,splitter,sorter,uppercase]

puts "Would you like to write your results to a file or to the screen?"
answer=$stdin.gets.chomp

if answer=="file"
  puts "Your results are on the C drive under the folder 'Homework' in the file 'results'."
  elsif answer=="screen"
    puts "Thank you!"
  else
    puts "\n\nYou are a moron. Try again.\n"
end


input.map{|x| x.process(f,ARGV,answer)}