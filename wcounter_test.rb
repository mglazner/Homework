require 'minitest\autorun'
require_relative "wcounter"
require "stringio"

class Wcounter_test < MiniTest::Unit::TestCase

  def test_initialize_wcounter
    wctr=Wcounter.new
    refute_nil(wctr)
  end
  
  def test_process_line
    test=Wcounter.new
    test.process_line("That's not a thing.","whatever")
    assert_equal(4,test.data)
  end

  def test_process_multiple_lines
    test=Wcounter.new
    test.process_line("That's not a thing.","whatever")
    test.process_line("That's not a thing.","whatever")
    assert_equal(8,test.data)
  end

  def test_true_should_process?
    test=Wcounter.new
    assert_equal(true,test.should_process?("yodel"))
  end

  def test_false_should_process?
    test=Wcounter.new
    assert_equal(false,test.should_process?("-wct"))
  end

  def test_file_results
    test=Wcounter.new
    testing=""
    test.process_line("old yokels fart a lot","  ")
    output=StringIO.new(testing)
    test.file_results(output)
    assert_equal(testing,'5'+"\n"+"-"*30+"\n")
  end

end