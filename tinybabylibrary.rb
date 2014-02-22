PUNCT = [".", ",", "!", "'", "?",":",";","-","~"]

def separate_line(v1)
  v1.split
end

def count_words(x)
  hold=0
  x.each_line do |n|
   hold=+n.split.length
  end
  hold
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
