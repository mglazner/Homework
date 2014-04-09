require_relative "counter"

class Split < Counter

  def initialize
    @data=[]
    @option_name="-spl"
  end

  def process_line(line,argv)
    if should_process?(argv)
      @data+=line.split
    end
  end

end

