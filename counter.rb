class Counter

PUNCT = [".", ",", "!", "'", "?",":",";","-","~"]

  attr_reader :wcount, :pcount, :split, :hyph, :upcs, :alph

  def initialize
    @wcount=0
    @pcount=0
    @split=[]
    @hyph=""
    @upcs=[]
    @alph=[]
  end

  def count_punctuation(line)
    @pcount+=(line.split(//)-((line.split(//))-PUNCT)).length
  end

  def count_words(line)
    @wcount+=line.split.size 
  end

  def separate_lines(line)
    @split+=line.split
  end
 
  def replace_spaces(line)
    @hyph+=line.gsub(" ","~")
  end

  def to_upcase(line)
    line.split.each do |j|
      @upcs<<j.upcase!
    end
  end

  def alphabetize(line)
    @alph+=line.split
    @alph.sort_by! {|n| n.downcase}
  end

  def puts_results
    puts "-"*30 
    unless @split==[]; puts @split; puts "-"*30; end
    unless @hyph==""; p @hyph; puts "-"*30; end
    unless @upcs==[]; p @upcs; puts "-"*30; end
    unless @alph==[]; p @alph; puts "-"*30; end 
    unless @wcount==0; p @wcount; puts "-"*30; end
    unless @pcount==0; p @pcount; puts "-"*30; end
    puts "\nThanks, and have a nice day!"
  end
  
  def file_results
    output=(File.open("hw12output.txt","w+"))
    unless @split==[]; output.puts @split; output.puts"-"*30; end
    unless @hyph==""; output.puts @hyph; output.puts"-"*30; end
    unless @upcs==[]; output.puts @upcs; output.puts"-"*30; end
    unless @alph==[]; output.puts @alph; output.puts"-"*30; end
    unless @wcount==0; output.puts @wcount; output.puts"-"*30; end
    unless @pcount==0; output.puts @pcount; output.puts"-"*30; end
    puts "\n    Your output is on the C: drive, \n    under the folder named Homework, \n    in the file marked Hw12output.txt \n\n        Thank you!"; 
  end

end



#  def wcount 
#    @wcount 
#  end

# The above is the long form of the attr_reader shortcut on line 3; good to know, probs

