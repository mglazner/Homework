class Split
 
  attr_reader :split

  def initialize
    @split=[]
  end

  def puts_results
    puts @split 
    puts "-"*30 
  end

  def split_on_spaces(f)
    f.seek(0)
    f.each_line do |m|
      @split+=m.split
    end
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @split 
    output.puts"-"*30   
  end

  def should_split?(argv)
    true unless argv.any? {|s| s.include?('-spl')}
  end

  def process(z,y,x,w)
    z.split_on_spaces(y) if z.should_split?(x)
    if w=="file"; z.file_results
      elsif w=="screen"; z.puts_results
    end
  end  
end

