# 12.6 on page 101
# Reading in names/birthdates from a text file, getting the name from the user, and returning the birth date listed in the file.

raw_info=File.open("birthday_raw_info.txt")
puts raw_info

puts "Give your name and I'll give you your birthdate."
answer=gets.chomp!

raw_info.each_line do |i|
  if i[0..14]==answer[0..14]
    puts i[-13..-1]
  end
end
  