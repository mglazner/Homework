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

input.map{|x| x.process(f,ARGV,answer)}