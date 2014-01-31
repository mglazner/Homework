#Create methods that don't take the second parameter, instead use the return value of the method to run the loop.
#Fix count_punct to add a count for '?' by making it more generic. (By not just adding another term to the formula)

PUNCT = [".", ",", "!", "'", "?",":",";","-","~"]

def separate_line(v1)
  v1.split
end

def upcase(v2)
  v2.split.each do |m|
    m.upcase!  
  end
end

def replace_spaces(v3)
  v3.gsub(" ","-")
end

def count_words(v4)
  v4.split.length
end

def count_punct(v5)
#  (v5.split(//)-((v5.split(//))-PUNCT)).length
  holding=0
  PUNCT.each do |m|
    holding+=(v5.count(m))
  end
  holding
end

def sort(v6)
  v6.split
end

def puts_results(a,b,c,d,e,f) 
  puts "--------------------"
  puts a
  puts "--------------------"
  puts b
  puts "--------------------"
  puts c
  puts "--------------------"
  puts d
  puts "--------------------"
  puts e
  puts "--------------------"
  puts f
  puts "--------------------" 
end

def file_results(a,b,c,d,e,f)
  output=(File.open("hw12output.txt","w"))
  output.puts a
  output.puts "\n-----------------\n\n"
  output.puts b
  output.puts "\n-----------------\n\n"
  output.puts c
  output.puts "\n-----------------\n\n"
  output.puts d
  output.puts "\n-----------------\n\n"
  output.puts e
  output.puts "\n-----------------\n\n"
  output.puts f
end