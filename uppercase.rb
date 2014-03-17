class Uppercase

  attr_reader :upcase

  def initialize
    @upcase=[]
  end

  def calculate(x,y)
    to_uppercase(x) if should_upcase?(y)
  end

  def puts_results
    p @upcase
    puts "-"*30 
  end

  def to_uppercase(f)
    f.split.each do |j|
        @upcase<<j.upcase!
    end
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @upcase
    output.puts"-"*30   
  end

  def should_upcase?(argv)
    if argv.include?("-up"); false
    else true  
    end
  end

  def process(y,x,w)
    to_uppercase(y) if should_upcase?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end
    y.seek(0)
  end  

end

