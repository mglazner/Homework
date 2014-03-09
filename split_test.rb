require 'minitest\autorun'
require_relative "split"

class Split_test < MiniTest::Unit::TestCase

  def test_initialize_uppercase
    test=Split.new
    refute_nil(test)
  end
  
  def test_split_on_spaces
    test=Split.new
    test.split_on_spaces("Trying new things, yo")
    assert_equal(["Trying","new","things,","yo"],test.split)
  end

  def test_split_multiple_lines
    test=Split.new
    test.split_on_spaces("Trying things, yo")
    test.split_on_spaces("Yeah, y'all!")
    assert_equal(["Trying","things,","yo","Yeah,","y'all!"],test.split)
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