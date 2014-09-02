puts "Hello to my favorite grandson! What's the happs?"
answer=gets.chomp!
while (answer!="bye")&&(answer!="BYE")
  if answer==answer.upcase
    puts "NO, NOT SINCE " + rand(1930..1950).to_s + "!"
    answer=gets.chomp!
  elsif answer!=answer.upcase
    puts "HUH!? SPEAK UP, SONNY!"
    answer=gets.chomp!
  end  
end