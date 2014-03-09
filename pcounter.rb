class Pcounter

  PUNCT = [".", ",", "!", "'", "?",":",";","-","~"]

  attr_reader :pcount

  def initialize
    @pcount=0
  end

  def puts_results
    p @pcount 
    puts "-"*30 
  end

  def count_punctuation(f)
    f.each_line do |m|
      @pcount+=(m.split(//)-((m.split(//))-PUNCT)).length
    end
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @pcount 
    output.puts"-"*30
  end

  def should_pcount?(argv)
    if argv.include?("-pct"); false
    else true  
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

