require 'minitest\autorun'
require_relative "sort"

class Sort_test < MiniTest::Unit::TestCase

  def test_initialize_sort
    sort=Sort.new
    refute_nil(sort)
  end
  
  def test_process_line
    sort=Sort.new
    sort.process_line("a z q r","whatever")
    assert_equal(["a","q","r","z"],sort.alph)
  end

  def test_process_multiple_lines
    sort=Sort.new
    sort.process_line("a z Q r","whatever")
    sort.process_line("B y t e","whatever")
    assert_equal(["a","B","e","Q","r","t","y","z"],sort.alph)
  end

  def test_true_should_sort?
    sort=Sort.new
    assert_equal(true,sort.should_sort?("yodel"))
  end

  def test_false_should_sort?
    sort=Sort.new
    assert_equal(false,sort.should_sort?("-sort"))
  end

end

