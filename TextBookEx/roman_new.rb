class Roman

  def initialize
    @tracker=""
  end

  def calculate_symbol(digit,iterator,letter)
    if digit.modulo(iterator)==digit
      count=0
    else 
      count=((digit-(digit.modulo(iterator)))/iterator)
    end
    @tracker+=letter*count
    digit.modulo(iterator)
  end

  def convert(digit)
  hash={1000=>"M",500=>"D",100=>"C",50=>"L",10=>"X",5=>"V",1=>"I"}
  hash.each do |(iterator,letter)|
    digit=calculate_symbol(digit,iterator,letter)
  end
    puts @tracker
  end

end

puts "What number would you like to convert into Roman numerals?"
answer=gets.chomp!
attempt=Roman.new
puts attempt.convert(answer.to_i)




