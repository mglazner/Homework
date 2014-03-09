require 'minitest\autorun'
require_relative "sort"

class Sort_test < MiniTest::Unit::TestCase

  def test_initialize_sort
    sort=Sort.new
    refute_nil(sort)
  end
  
  def test_alphabetize
    sort=Sort.new
    sort.alphabetize("a z q r")
    assert_equal(["a","q","r","z"],sort.alph)
  end

  def test_alphabetize_multiple_lines
    sort=Sort.new
    sort.alphabetize("a z Q r")
    sort.alphabetize("B y t e")
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

