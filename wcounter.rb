class Wcounter
 
  attr_reader :wcount

  def initialize
    @wcount=0
  end

  def process_line(line,argv)
    if should_wcount?(argv)
      @wcount+=line.split.size
    end     
  end

  def file_results(output)
    if @wcount!=0    
      output.puts @wcount 
      output.puts"-"*30
    end
  end

  def should_wcount?(argv)
    if argv.include?("-wct"); false
    else true  
    end
  end

end

