class Uppercase

  attr_reader :upcase

  def initialize
    @upcase=[]
  end

  def puts_results
    p @upcase
    puts "-"*30 
  end

  def to_uppercase(f)
    f.seek(0)
    f.each_line do |i|
      i.split.each do |j|
        @upcase<<j.upcase!
      end
    end
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @upcase
    output.puts"-"*30   
  end

  def should_upcase?(argv)
    true unless argv.any? {|s| s.include?('-up')}
  end

  def process(z,y,x,w)
    z.to_uppercase(y) if z.should_upcase?(x)
    if w=="file"; z.file_results
      elsif w=="screen"; z.puts_results
    end
  end  
end

