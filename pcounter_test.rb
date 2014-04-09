require 'minitest\autorun'
require_relative "pcounter"
require "stringio"

class Pcounter_test < MiniTest::Unit::TestCase

  def test_initialize_pcount
    test=Pcounter.new
    refute_nil(test)
  end
  
  def test_process_line
    test=Pcounter.new
    test.process_line("Trying! new~ things, yo.","whatever")
    assert_equal(4,test.data)
  end

  def test_process_multiple_lines
    test=Pcounter.new
    test.process_line("~testin' stuff, y'all:","whatever")
    test.process_line("megan: glazner, IS! amazing?","whatever")
    assert_equal(9,test.data)
  end

  def test_true_should_process?
    test=Pcounter.new
    assert_equal(true,test.should_process?("yodel"))
  end

  def test_false_should_process?
    test=Pcounter.new
    assert_equal(false,test.should_process?("-pct"))
  end
 
  def test_file_results
    test=Pcounter.new
    tester=""
    test.process_line("Trying! new~ things, yo.","whatever")
    output=StringIO.new(tester)
    test.file_results(output)
    assert_equal(tester,'4'+"\n"+"-"*30+"\n")
  end

end