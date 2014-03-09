require 'minitest\autorun'
require_relative "uppercase"

class Uppercase_test < MiniTest::Unit::TestCase

  def test_initialize_uppercase
    upcs=Uppercase.new
    refute_nil(upcs)
  end
  
  def test_uppercase
    upcs=Uppercase.new
    upcs.to_uppercase("testing stuff, yo")
    assert_equal(["TESTING","STUFF,","YO"],upcs.upcase)
  end

  def test_uppercase_multiple_lines
    upcs=Uppercase.new
    upcs.to_uppercase("testing stuff, yo")
    upcs.to_uppercase("megan glazner")
    assert_equal(["TESTING","STUFF,","YO","MEGAN","GLAZNER"],upcs.upcase)
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