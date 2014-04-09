require_relative "counter"

class Sort < Counter

  def initialize
    @data=[]
    @option_name="-sort"
  end

  def process_line(line,argv)
    if should_process?(argv)
      @data+=line.split
    end
    @data.sort_by! {|n| n.downcase}
  end

end

