require 'minitest\autorun'
require_relative "wcounter"

class Wcounter_test < MiniTest::Unit::TestCase

  def test_initialize_wcounter
    wctr=Wcounter.new
    refute_nil(wctr)
  end
  
  def test_count_words
    wctr=Wcounter.new
    wctr.count_words("how much wood should a wood chuck, chuck?")
    assert_equal(8,wctr.wcount)
  end

  def test_count_words_multiple_lines
    wctr=Wcounter.new
    wctr.count_words("how much wood should a wood chuck, chuck?")
    wctr.count_words("Seriously, do you know? 'Cause I don't")
    assert_equal(15,wctr.wcount)
  end

  def test_true_should_wcount?
    wctr=Wcounter.new
    assert_equal(true,wctr.should_wcount?("yodel"))
  end

  def test_false_should_wcount?
    wctr=Wcounter.new
    assert_equal(false,wctr.should_wcount?("-wct"))
  end

end