class Split
 
  attr_reader :split

  def initialize
    @split=[]
  end

  def calculate(x,y)
    split_on_spaces(x) if should_split?(y)
  end

  def puts_results
    if @split!=[]
      puts @split 
      puts "-"*30 
    end
  end

  def split_on_spaces(f)
    f.seek(0)
    f.each_line do |m|
      @split+=m.split
    end
  end


  def file_results 
    if @split!=[]   
      output=(File.open("results","a+"))
      output.puts @split 
      output.puts"-"*30   
    end
  end

  def should_split?(argv)
    if argv.include?("-spl"); false
    else true  
    end
  end

  def process(y,x,w)
    split_on_spaces(y) if should_split?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end
    y.seek(0)
  end  

end

