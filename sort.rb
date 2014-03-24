class Sort
 
  attr_reader :alph

  def initialize
    @alph=[]
  end

  def calculate(x,y)
    alphabetize(x) if should_sort?(y)
  end

  def puts_results
    if @alph!=[]
      p @alph 
      puts "-"*30 
    end
  end

  def alphabetize(f)
    f.each_line do |m|
      @alph+=m.split
    end
    @alph.sort_by! {|n| n.downcase}
  end

  def file_results
    if @alph!=[]    
      output=(File.open("results","a+"))
      output.puts @alph 
      output.puts"-"*30   
    end
  end

  def should_sort?(argv)
    if argv.include?("-sort"); false
    else true  
    end
  end

  def process(y,x,w)
    alphabetize(y) if should_sort?(x)
    if w=="file"; file_results
      elsif w=="screen"; puts_results
    end
    y.seek(0)
  end  
 
end

