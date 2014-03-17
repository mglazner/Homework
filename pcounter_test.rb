require 'minitest\autorun'
require_relative "pcounter"

class Pcounter_test < MiniTest::Unit::TestCase

  def test_initialize_pcount
    test=Pcounter.new
    refute_nil(test)
  end
  
  def test_count_punctuation
    test=Pcounter.new
    test.count_punctuation("!testin' stuff, yo!")
    assert_equal(4,test.pcount)
  end

  def test_count_punctuation_multiple_lines
    test=Pcounter.new
    test.count_punctuation("testin' stuff, y'all:")
    test.count_punctuation("megan: glazner, IS! amazing?")
    assert_equal(8,test.pcount)
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