class Uppercase

  attr_reader :upcase

  def initialize
    @upcase=[]
  end

  def calculate(x,y)
    to_uppercase(x) if should_upcase?(y)
  end

  def puts_results
    if @upcase!=[]
      puts @upcase
      puts "-"*30
    end 
  end

  def to_uppercase(f)
    f.seek(0)
    f.each_line do |i|
      i.split.each do |j|
        @upcase<<j.upcase!
      end
    end
  end


  def file_results 
    if @upcase!=[]   
      output=(File.open("results","a+"))
      output.puts @upcase
      output.puts"-"*30 
    end  
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

