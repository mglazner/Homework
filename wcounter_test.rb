require 'minitest\autorun'
require_relative "wcounter"

class Wcounter_test < MiniTest::Unit::TestCase

  def test_initialize_wcounter
    wctr=Wcounter.new
    refute_nil(wctr)
  end
  
  def test_process_line
    wctr=Wcounter.new
    wctr.process_line("That's not a thing.","whatever")
    assert_equal(4,wctr.wcount)
  end

  def test_process_multiple_lines
    wctr=Wcounter.new
    wctr.process_line("That's not a thing.","whatever")
    wctr.process_line("That's not a thing.","whatever")
    assert_equal(8,wctr.wcount)
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