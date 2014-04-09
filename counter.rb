class Counter

  attr_reader :data, :option_name

  def should_process?(argv)
    if argv.include?(@option_name)
      false
    else 
      true
    end
  end

  def file_results(output)    
    output.puts @data 
    output.puts"-"*30   
  end

end

