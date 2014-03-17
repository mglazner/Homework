require_relative "counters\pcounter"
require_relative "counters\wcounter"
require_relative "counters\gsub_hyphen"
require_relative "counters\split"
require_relative "counters\sort"
require_relative "counters\uppercase"

f=File.open(ARGV[0])
punctcounter=Pcounter.new
wordcounter=Wcounter.new
gsubber=Gsub_hyphen.new
splitter=Split.new
sorter=Sort.new
uppercase=Uppercase.new

puts "Would you like to write your results to a file or to the screen?"
answer=$stdin.gets.chomp

wordcounter.process(f,ARGV,answer)
punctcounter.process(f,ARGV,answer)
gsubber.process(f,ARGV,answer)
splitter.process(f,ARGV,answer)
sorter.process(f,ARGV,answer)
uppercase.process(f,ARGV,answer)

if answer=="file"; puts "\n Your output is under C:/Homework/results"; 
  elsif answer=="screen"; "\n  Thank you!";
  else puts "\n  You fail at life. \n\n  Go home, loser.";
end


