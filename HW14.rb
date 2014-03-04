require_relative "pcounter"
require_relative "wcounter"
require_relative "gsub_hyphen"
require_relative "split"
require_relative "sort"
require_relative "uppercase"

f=File.open(ARGV[0])
pcter=Pcounter.new
wcter=Wcounter.new
gsubber=Gsub_hyphen.new
splitter=Split.new
sorter=Sort.new
uppercs=Uppercase.new

puts "Would you like to write your results to a file or to the screen?"
answer=$stdin.gets.chomp

wcter.process(wcter,f,ARGV,answer)
pcter.process(pcter,f,ARGV,answer)
gsubber.process(gsubber,f,ARGV,answer)
splitter.process(splitter,f,ARGV,answer)
sorter.process(sorter,f,ARGV,answer)
uppercs.process(uppercs,f,ARGV,answer)

if answer=="file"; puts "\n Your output is under C:/Homework/results \n\n   Thank you!"; 
 elsif answer=="screen"; "\n  Thank you!"
 else puts "\n  You fail at life. \n\n  Go home, loser.";
end

#I am aware that they are back-, not forward- slashes, but it was giving me 'tude.

