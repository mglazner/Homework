#Take one of your solns to HW4 and create it as a ruby file, and decompose it into #methods as you see fit. I would strongly recommend #starting small.

h={}
string="another big long string that has lots of characters"
vowels=["a","e","i","o","u"]

def output_results(h)
  puts h
end

def populate_hash(string,vowels,h)
  vowels.each do |m|
    h[m]=string.count(m)
  end
end

def main(string,vowels,h)
  populate_hash(string,vowels,h)
  output_results(h)
end

main(string,vowels,h)