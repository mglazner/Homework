class Wcounter
 
  attr_reader :wcount

  def initialize
    @wcount=0
  end

  def calculate(x,y)
    count_words(x) if should_wcount?(y)
  end

  def puts_results
    puts " \n"
    p @wcount 
    puts "-"*30 
  end

  def count_words(f)
    f.seek(0)
    f.each_line do |m|
      @wcount+=m.split.size
    end
  end


  def file_results    
    output=(File.open("results","w"))
    output.puts "Here are your results:\n\n"
    output.puts"-"*30
    output.puts @wcount 
    output.puts"-"*30
  end

  def should_wcount?(argv)
    if argv.include?("-wct"); false
    else true  
    end
  end

  def process(y,x,w)
    y.seek(0)
    count_words(y) if should_wcount?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end
    y.seek(0)
  end 
 
end

