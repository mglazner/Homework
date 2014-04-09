require 'minitest\autorun'
require_relative "split"
require "stringio"

class Split_test < MiniTest::Unit::TestCase

  def test_initialize_uppercase
    test=Split.new
    refute_nil(test)
  end
  
  def test_process_line
    test=Split.new
    test.process_line("Trying new things, yo","whatever")
    assert_equal(["Trying","new","things,","yo"],test.data)
  end

  def test_process_multiple_lines
    test=Split.new
    test.process_line("Trying things","whatever")
    test.process_line("Yeah, y'all!","whatever")
    assert_equal(["Trying","things","Yeah,","y'all!"],test.data)
  end

  def test_true_should_process?
    test=Split.new
    assert_equal(true,test.should_process?("yodel"))
  end

  def test_false_should_process?
    test=Split.new
    assert_equal(false,test.should_process?("-spl"))
  end

  def test_file_results
    test=Split.new
    testing=""
    test.process_line("y x t r","  ")
    output=StringIO.new(testing)
    test.file_results(output)
    assert_equal(testing,"y\nx\nt\nr\n"+"-"*30 +"\n")
  end

end