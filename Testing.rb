#h={}
#s="another big long string that has lots of characters"
#vowels=["a", "e", "i", "o", "u"]

#vowels.each do |c|
#  h[c]=s.count(c)
#end
#puts h

#s.each_char do |c|
#  if vowels.include?(c)
#    if h[c]==nil
#      h[c]=0
#    end
#    h[c]+=1
#  end
#end
#puts h

#Using methods ** note: probably didn't need to change "result" for h

def output_results (result) #result is what we are passing the method 
  puts result
end

def create_pair_if_nil (result,c) #"vars" are local and can be reused
  if result[c]==nil
     result[c]=0
  end
end

def increment (result,c)
  result[c]+=1
end

def counting_vowels (result,c,vowels)
  if vowels.include?(c)
    create_pair_if_nil(result,c)
    increment(result,c)
  end
end

def main ()
  h={}
  s="another big long string that has lots of characters"
  vowels=["a", "e", "i", "o", "u"]
  s.each_char do |c|
    counting_vowels(h,c,vowels)
  end
  output_results(h)
end

## So this becomes our entire "function"
main()
##

