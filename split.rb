class Split
 
  attr_reader :split

  def initialize
    @split=[]
  end

  def process_line(line,argv)
    if should_split?(argv)
      @split+=line.split
    end
  end

  def file_results(output)
    if @split!=[]   
      output.puts @split 
      output.puts"-"*30   
    end
  end

  def should_split?(argv)
    if argv.include?("-spl"); false
    else true  
    end
  end

end

