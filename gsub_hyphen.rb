class Gsub_hyphen
 
  attr_reader :hyph

  def initialize
    @hyph=""
  end

  def puts_results
    p @hyph 
    puts "-"*30 
  end

  def replace_spaces(f)
    f.seek(0)
    f.each_line do |m|
      @hyph+=m.gsub(" ","~")
    end
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @hyph 
    output.puts"-"*30   
  end

  def should_gsub?(argv)
    true unless argv.any? {|s| s.include?('-sub')}
  end

  def process(z,y,x,w)
    z.replace_spaces(y) if z.should_gsub?(x)
    if w=="file"; z.file_results
      elsif w=="screen"; z.puts_results
    end
  end  
end

