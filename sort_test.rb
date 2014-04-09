require 'minitest\autorun'
require_relative "sort"
require "stringio"

class Sort_test < MiniTest::Unit::TestCase

  def test_initialize_sort
    sort=Sort.new
    refute_nil(sort)
  end
  
  def test_process_line
    sort=Sort.new
    sort.process_line("a z q r","whatever")
    assert_equal(["a","q","r","z"],sort.data)
  end

  def test_process_multiple_lines
    sort=Sort.new
    sort.process_line("a z Q r","whatever")
    sort.process_line("B y t e","whatever")
    assert_equal(["a","B","e","Q","r","t","y","z"],sort.data)
  end

  def test_true_should_process?
    test=Sort.new
    assert_equal(true,test.should_process?("yodel"))
  end

  def test_false_should_process?
    test=Sort.new
    assert_equal(false,test.should_process?("-sort"))
  end
 
  def test_file_results
    sort=Sort.new
    tester=""
    sort.process_line("y x t r","yues")
    output=StringIO.new(tester)
    sort.file_results(output)
    assert_equal(tester,"r\nt\nx\ny\n"+("-"*30)+"\n")
  end

end

