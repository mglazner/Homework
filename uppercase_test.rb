require 'minitest\autorun'
require_relative "uppercase"

class Uppercase_test < MiniTest::Unit::TestCase

  def test_initialize_uppercase
    upcs=Uppercase.new
    refute_nil(upcs)
  end
  
  def test_process_line
    upcs=Uppercase.new
    upcs.process_line("testing stuff yo","whatever")
    assert_equal(["TESTING STUFF YO"],upcs.upcase)
  end

  def test_process_multiple_lines
    upcs=Uppercase.new
    upcs.process_line("testing stuff yo","whatever")
    upcs.process_line("megan glazner","whatever")
    assert_equal(["TESTING STUFF YO","MEGAN GLAZNER"],upcs.upcase)
  end

  def test_true_should_upcase?
    upcs=Uppercase.new
    assert_equal(true,upcs.should_upcase?("yodel"))
  end

  def test_false_should_upcase?
    upcs=Uppercase.new
    assert_equal(false,upcs.should_upcase?("-up"))
  end

end