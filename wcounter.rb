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

  def process(y,x,w)
    count_words(y) if should_wcount?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end

  end 
 
end

