require_relative "counter"

class GsubHyphen < Counter

  def initialize
    @data=""
    @option_name="-gsub"
  end

  def process_line(line,argv)
    if should_process?(argv)
      @data+=line.gsub(" ","~")
    end
  end  

end





 








    # !argv.include?("-sub")  #.include? is inherently boolean