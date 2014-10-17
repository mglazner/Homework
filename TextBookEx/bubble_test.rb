require 'minitest\autorun'
require_relative "bubble"
require "stringio"

class Bubble_test < MiniTest::Unit::TestCase

  def setup  
    @sorter=Bubble.new
  end
    
  def test_two_elt_sorting
    assert_equal(["a","b"],@sorter.bubble(["b", "a"]))
  end
  
  def test_two_elt_sorting_in_order_already
    assert_equal(["a","b"],@sorter.bubble(["a", "b"]))
  end
  
  def test_three_elements
    assert_equal(["a","b","c"],@sorter.bubble(["c","a","b"]))
  end
  
end


#  def test_empty_array
#    assert_equal(@sorter.bubble([]),[])
#  end