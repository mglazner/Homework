puts "Welcome to the wonderful world of sorting!"
puts "What words would you like to sort today?"
vocab=[]
answer=gets.chomp!
while answer!=""
  vocab.push(answer)
  answer=gets.chomp!
  vocab.sort!
  if answer==nil
  break
  end
end
puts vocab
puts "Thanks for playing!"