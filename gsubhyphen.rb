class GsubHyphen
 
  attr_reader :hyph

  def initialize
    @hyph=""
  end

  def process_line(line,argv)
    if should_gsub?(argv)
      @hyph+=line.gsub(" ","~")
    end
  end  

  def should_gsub?(argv)
    if argv.include?("-gsub"); false
    else true  
    end
  end

  def file_results(output)  
    if @hyph!=""  
      output.puts @hyph 
      output.puts"-"*30  
    end 
  end

end





 








    # !argv.include?("-sub")  #.include? is inherently boolean