class Roman

attr_reader :mcount, :dcount, :ccount, :lcount, :xcount, :vcount, :icount

def initialize
  @mcount=0
  @dcount=0
  @ccount=0
  @lcount=0
  @xcount=0
  @vcount=0
  @icount=0
end

def thousandcount(numeral)
  if numeral.modulo(1000)==numeral
    @mcount=0
  else
    @mcount=((numeral-(numeral.modulo(1000)))/1000)
  end
  remainder1000=numeral.modulo(1000)
end

def fivehundredcount(remainder1000)
  if remainder1000.modulo(500)==remainder1000
    @dcount=0
  else
    @dcount=((remainder1000-(remainder1000.modulo(500)))/500)
  end
  remainder500=remainder1000.modulo(500)
end

def hundredcount(remainder500)
  if remainder500.modulo(100)==remainder500
    @ccount=0
  else
    @ccount=((remainder500-(remainder500.modulo(100)))/100)
  end
  remainder100=remainder500.modulo(100)
end

def fiftycount(remainder100)
  if remainder100.modulo(50)==remainder100
    @lcount=0
  else
    @lcount=((remainder100-(remainder100.modulo(50)))/50)
  end
  remainder50=remainder100.modulo(50)
end

def tencount(remainder50)
  if remainder50.modulo(10)==remainder50
    @xcount=0
  else
    @xcount=((remainder50-(remainder50.modulo(10)))/10)
  end
  remainder10=remainder50.modulo(10)
end

def fivecount(remainder10)
  if remainder10.modulo(5)==remainder10
    @vcount=0
  else
    @vcount=((remainder10-(remainder10.modulo(5)))/5)
  end
  @icount=remainder10.modulo(5)
end

def collectinfo(numeral)
  info=hundredcount(fivehundredcount(thousandcount(numeral)))
  fivecount(tencount(fiftycount(info)))
end

def convert(numeral)
  collectinfo(numeral)
  count=[]
  @mcount.times {count.push("M")}
  @dcount.times {count.push("D")} 
  @ccount.times {count.push("C")} 
  @lcount.times {count.push("L")}
  @xcount.times {count.push("X")}
  @vcount.times {count.push("V")}
  @icount.times {count.push("I")}
  puts count.join('')
end

end

puts "What number would you like to convert into Roman numerals?"
answer=gets.chomp!
attempt=Roman.new
puts attempt.convert(answer.to_i)