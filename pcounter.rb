class Pcounter

  attr_reader :pcount

  PUNCT=[".", ",", "!", "'", "?",":",";","-","~"]

  def initialize
    @pcount=0
  end

  def calculate(x,y)
    count_punctuation(x) if should_pcount?(y)
  end

  def puts_results
    if @pcount!=0
      puts "\n\n"
      p @pcount 
      puts "-"*30 
    end
  end

  def count_punctuation(f)
    f.seek(0)
    f.each_line do |m|
      @pcount+=(m.split(//)-((m.split(//))-PUNCT)).length
    end
  end


  def file_results   
    if @pcount!=0 
      output=(File.open("results","a+"))
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

  def process(y,x,w)
    count_punctuation(y) if should_pcount?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end
    y.seek(0)
  end
 
end
