require 'minitest\autorun'
require_relative "gsub_hyphen"

class Gsub_hyphen_test < MiniTest::Unit::TestCase

  def test_initialize_gsub
    gsub=Gsub_hyphen.new
    refute_nil(gsub)
  end
  
  def test_replace_spaces
    gsub=Gsub_hyphen.new
    gsub.replace_spaces("Yo, homie Gee")
    assert_equal("Yo,~homie~Gee",gsub.hyph)
  end

  def test_replace_spaces_multiple_lines
    gsub=Gsub_hyphen.new
    gsub.replace_spaces("Yo, homie Gee.")
    gsub.replace_spaces("How's it hangin'?")
    assert_equal("Yo,~homie~Gee.How's~it~hangin'?",gsub.hyph)
  end

  def test_true_should_gsub?
    test=Gsub_hyphen.new
    assert_equal(true,test.should_gsub?("yodel"))
  end

  def test_false_should_gsub?
    test=Gsub_hyphen.new
    assert_equal(false,test.should_gsub?("-sub"))
  end

end

