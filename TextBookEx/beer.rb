puts 'how many bottles of beer are on the wall?'
counter=gets.chomp.to_i
while counter!=1
puts counter.to_s + ' bottles of beer on the wall, ' + counter.to_s + ' bottles of beer!'
puts '  Take one down, pass it around, ' + (counter-1).to_s + ' bottles of beer on the wall!'
counter=counter-1 
end
if counter==1
  puts "1 bottle of beer on the wall, 1 bottle of beer!   Take one down, pass it around, NO BOTTLES OF BEER on the wall!"
  counter=counter-1
end

#bottle is SUCH a weird word