class GsubHyphen
 
  attr_reader :hyph

  def initialize
    @hyph=""
  end

  def calculate(x,y)
    replace_spaces(x) if should_gsub?(y)
  end

  def replace_spaces(f)
    f.seek(0)
    f.each_line do |m|
      @hyph+=m.gsub(" ","~")
    end
  end
  

  def puts_results
    puts @hyph 
    puts "-"*30 
  end

  def should_gsub?(argv)
    if argv.include?("-sub")
      false
    else
      true  
    end
     # !argv.include?("-sub")  #.include? is inherently boolean
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @hyph 
    output.puts"-"*30   
  end

  def process(y,x,w)
    replace_spaces(y) if should_gsub?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end
    y.seek(0)
  end 
end