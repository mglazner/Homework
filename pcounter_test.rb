require 'minitest\autorun'
require_relative "pcounter"

class Pcounter_test < MiniTest::Unit::TestCase

  def test_initialize_pcount
    test=Pcounter.new
    refute_nil(test)
  end
  
  def test_process_line
    test=Pcounter.new
    test.process_line("Trying! new~ things, yo.","whatever")
    assert_equal(4,test.pcount)
  end

  def test_process_multiple_lines
    test=Pcounter.new
    test.process_line("~testin' stuff, y'all:","whatever")
    test.process_line("megan: glazner, IS! amazing?","whatever")
    assert_equal(9,test.pcount)
  end

  def test_true_should_pcount?
    test=Pcounter.new
    assert_equal(true,test.should_pcount?("yodel"))
  end

  def test_false_should_pcount?
    test=Pcounter.new
    assert_equal(false,test.should_pcount?("-pct"))
  end

end