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
input=[wordcounter,punctcounter,gsubber,sorter,splitter,uppercase]

puts "Would you like to write your results to a file or to the screen?"
answer=$stdin.gets.chomp

if answer=="file" 
  output=(File.open("results","w"))
  output.puts "Your results are in C:\\Homework\\results"
elsif answer=="screen"
  output=$stdout
end

output.puts "\n\nHere are your results:\n\n"
output.puts"-"*30

f.each_line do |line|
  input.each do |x|
    x.process_line(line,ARGV)
  end
end

input.each do |m|
  if m.should_process?(ARGV)
    m.file_results(output) 
  end
end






#input.each{|x| x.process(f,ARGV,answer,output)}