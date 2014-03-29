class Sort
 
  attr_reader :alph

  def initialize
    @alph=[]
  end

  def process_line(line,argv)
    if should_sort?(argv)
      @alph+=line.split
    end
    @alph.sort_by! {|n| n.downcase}
  end

  def file_results(output)
    if @alph!=[]    
      output.puts @alph 
      output.puts"-"*30   
    end
  end

  def should_sort?(argv)
    if argv.include?("-sort"); false
    else true  
    end
  end
 
end

