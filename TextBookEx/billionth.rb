#when will a person reach their one billionth second?

megantime=Time.new(1983,11,8,16,16,16,"-07:00")
joditime=Time.new(1985,12,18,20,45,36,"-07:00")
rondatime=Time.new(1988,8,6,11,36,12,"-07:00")
meganbillionth=megantime+(1000000000)

puts megantime
puts megantime.monday?
puts megantime.tuesday?
puts megantime.wednesday?
puts megantime.thursday?
puts megantime.friday?
puts "----"
puts megantime.dst?
puts megantime<joditime
p meganbillionth