class Pcounter

  attr_reader :pcount

  PUNCT=[".", ",", "!", "'", "?",":",";","-","~"]

  def initialize
    @pcount=0
  end

  def process_line(line,argv)
    if should_pcount?(argv)
      @pcount+=(line.split(//)-((line.split(//))-PUNCT)).length
    end
  end

  def file_results(output) 
    if @pcount!=0 
      output.puts @pcount 
      output.puts"-"*30
    end
  end

  def should_pcount?(argv)
    if argv.include?("-pct")
      false
    else
      true  
    end
  end
 
end
