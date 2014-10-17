#figure out user's b-day, then give them the appropriate number of spanks

puts Time.new 

puts "What month were you born? Please enter a number 1..12"
month=gets.chomp!
puts "What day of the month were you born? Please enter a number 1..31"
day=gets.chomp!
puts "What year were you born?"
year=gets.chomp!

birthdate=Time.new(year,month,day)
puts birthdate
# how many seconds in a year?
seconds_in_a_year=(365.25*24*60*60)
age=(((Time.new)-birthdate)/(seconds_in_a_year)).to_i

puts "Congratulations!"
puts "You are " + age.to_s + " years old today!"
puts "You have earned " + age.to_s + " spankings!"

age.times do 
puts 'SPANK!  .  .  .  OUCH!'
end



