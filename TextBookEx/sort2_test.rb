require 'minitest\autorun'
require_relative "sort2"
require "stringio"

class Sort2_test < MiniTest::Unit::TestCase

  def setup  
    @sorter=Sorter.new
  end
  
  def test_empty_array
    assert_equal(@sorter.sort([]),[])
  end
  
  def test_two_elt_sorting
    assert_equal(["apple","bear"],@sorter.sort(["bear", "apple"]))
  end
  
  def test_one_elt_sorting
    assert_equal(["cat"],@sorter.sort(["cat"]))
  end
  
  def test_two_elt_sorting_in_order_already
    assert_equal(["apple","bear"],@sorter.sort(["apple", "bear"]))
  end
  
  def test_three_elements
    assert_equal(["apple","bear","cat"],@sorter.sort(["cat","apple","bear"]))
  end
  
  def test_different_order_of_four_elements
    assert_equal(["apple","bear","cat","dog","elephant"],@sorter.sort(["apple","elephant","cat","dog","bear"]))
  end

end

#methods called setup or teardown will run before and after, respectively EVERY test method.