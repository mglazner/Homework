require 'minitest\autorun'
require_relative "gsubhyphen"

class GsubHyphen_test < MiniTest::Unit::TestCase

  def test_initialize_gsub
    gsub=GsubHyphen.new
    refute_nil(gsub)
  end
  
  def test_replace_spaces
    gsub=GsubHyphen.new
    gsub.replace_spaces("Yo, homie Gee")
    assert_equal("Yo,~homie~Gee",gsub.hyph)
  end

  def test_replace_spaces_multiple_lines
    gsub=GsubHyphen.new
    gsub.replace_spaces("Yo, homie Gee.")
    gsub.replace_spaces("How's it hangin'?")
    assert_equal("Yo,~homie~Gee.How's~it~hangin'?",gsub.hyph)
  end

  def test_true_should_gsub?
    gsub=GsubHyphen.new
    assert_equal(true,gsub.should_gsub?("yodel"))
  end

  def test_false_should_gsub?
    gsub=GsubHyphen.new
    assert_equal(false,gsub.should_gsub?("-sub"))
  end

end

