require_relative "counter"

class Uppercase < Counter

  def initialize
    @data=""
    @option_name="-upcs"
  end

  def process_line(line,argv)
    if should_process?(argv)
      @data<<line.upcase!
    end
  end

end

