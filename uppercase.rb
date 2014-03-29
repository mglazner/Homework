class Uppercase

  attr_reader :upcase

  def initialize
    @upcase=[]
  end

  def process_line(line,argv)
    if should_upcase?(argv)
      @upcase<<line.upcase!
    end
  end

  def file_results(output) 
    if @upcase!=[]   
      output.puts @upcase
      output.puts"-"*30 
    end  
  end

  def should_upcase?(argv)
    if argv.include?("-up"); false
    else true  
    end
  end  

end

