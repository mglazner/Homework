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
    f.seek(0)
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
    true unless argv.any? {|s| s.include?('-pct')}
  end

  def process(z,y,x,w)
    z.count_punctuation(y) if z.should_pcount?(x)
    if w=="file"; z.file_results
      elsif w=="screen"; z.puts_results
    end
  end  
end

