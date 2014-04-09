require_relative "counter"

class Pcounter < Counter

  PUNCT=[".", ",", "!", "'", "?",":",";","-","~"]

  def initialize
    @data=0
    @option_name="-pct"
  end

  def process_line(line,argv)
    if should_process?(argv)
      @data+=(line.split(//)-((line.split(//))-PUNCT)).length
    end
  end
 
end
