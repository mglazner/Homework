require_relative "counter"

class Wcounter < Counter

  def initialize
    @data=0
    @option_name="-wct"
  end

  def process_line(line,argv)
    if should_process?(argv)
      @data+=line.split.size
    end     
  end

end

