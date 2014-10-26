
current_raw=Time.new.hour
current=0

if current_raw>12
  current=(current_raw-12)
else
  current=current_raw
end

puts "\n\n\n" + "What time is it, grandfather clock?"
current.times do 
  puts "DONG!"
end
puts "Why it sounds like it is " + current.to_s + " o'clock, young un!" + "\n\n"

