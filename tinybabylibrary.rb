def separate_line(v1, splitting)
  splitting<<v1.split
end

def upcase(v2, uppercase)
  v2.split.each do |m|
  uppercase<<m.upcase!  
 end
end

def replace_spaces(v3, gsubhyphen)
  gsubhyphen<<v3.gsub(" ","-")
end

def count_words(v4)
  v4.split.length
end

def count_punct(v5)
  ((v5.count('.'))+(v5.count(','))+(v5.count('!'))+(v5.count("'"))+(v5.count("!"))) 
end

def sort(v6, alphabetic)
  alphabetic.concat(v6.split)
  alphabetic.sort!
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