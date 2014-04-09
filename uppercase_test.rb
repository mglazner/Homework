require 'minitest\autorun'
require_relative "uppercase"
require "stringio"

class Uppercase_test < MiniTest::Unit::TestCase

  def test_initialize_uppercase
    upcs=Uppercase.new
    refute_nil(upcs)
  end
  
  def test_process_line
    upcs=Uppercase.new
    upcs.process_line("testing stuff yo","whatever")
    assert_equal("TESTING STUFF YO",upcs.data)
  end

  def test_process_multiple_lines
    upcs=Uppercase.new
    upcs.process_line("testing stuff yo ","whatever")
    upcs.process_line("megan glazner","whatever")
    assert_equal("TESTING STUFF YO MEGAN GLAZNER",upcs.data)
  end

  def test_true_should_process?
    test=Uppercase.new
    assert_equal(true,test.should_process?("yodel"))
  end

  def test_false_should_process?
    test=Uppercase.new
    assert_equal(false,test.should_process?("-upcs"))
  end
 
  def test_file_results
    test=Uppercase.new
    tester=""
    test.process_line("r t x y","   ")
    output=StringIO.new(tester)
    test.file_results(output)
    assert_equal(tester,"R T X Y\n"+"-"*30+"\n")
  end

end