class Wcounter
 
  attr_reader :wcount

  def initialize
    @wcount=0
  end

  def puts_results
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
    output=(File.open("results","a+"))
    output.puts @wcount 
    output.puts"-"*30
    
  end

  def should_wcount?(argv)
    true unless argv.any? {|s| s.include?('-wct')}
  end

  def process(z,y,x,w)
    z.count_words(y) if z.should_wcount?(x)
    if w=="file"; z.file_results
      elsif w=="screen"; z.puts_results
    end
  end  
end

