class Sort
 
  attr_reader :alph

  def initialize
    @alph=[]
  end

  def puts_results
    p @alph 
    puts "-"*30 
  end

  def alphabetize(f)
    f.each_line do |m|
      @alph+=m.split
    end
    @alph.sort_by! {|n| n.downcase}
  end

  def file_results    
    output=(File.open("results","a+"))
    output.puts @alph 
    output.puts"-"*30   
  end

  def should_sort?(argv)
    true unless argv.any? {|s| s.include?('-sort')}
  end

  def process(y,x,w)
    alphabetize(y) if should_sort?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end

  end  

end

