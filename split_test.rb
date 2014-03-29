require 'minitest\autorun'
require_relative "split"

class Split_test < MiniTest::Unit::TestCase

  def test_initialize_uppercase
    test=Split.new
    refute_nil(test)
  end
  
  def test_process_line
    test=Split.new
    test.process_line("Trying new things, yo","whatever")
    assert_equal(["Trying","new","things,","yo"],test.split)
  end

  def test_process_multiple_lines
    test=Split.new
    test.process_line("Trying things","whatever")
    test.process_line("Yeah, y'all!","whatever")
    assert_equal(["Trying","things","Yeah,","y'all!"],test.split)
  end

 def test_true_should_split?
    test=Split.new
    assert_equal(true,test.should_split?("yodel"))
  end

  def test_false_should_split?
    test=Split.new
    assert_equal(false,test.should_split?("-spl"))
  end

end