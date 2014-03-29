require 'minitest\autorun'
require_relative "gsubhyphen"

class GsubHyphen_test < MiniTest::Unit::TestCase

  def test_initialize_gsub
    gsub=GsubHyphen.new
    refute_nil(gsub)
  end
  
  def test_process_line
    gsub=GsubHyphen.new
    gsub.process_line("Yo, homie Gee","whatever")
    assert_equal("Yo,~homie~Gee",gsub.hyph)
  end

  def test_process_multiple_lines
    gsub=GsubHyphen.new
    gsub.process_line("Yo, homie Gee.","whatever")
    gsub.process_line("How's it hangin'?","whatever")
    assert_equal("Yo,~homie~Gee.How's~it~hangin'?",gsub.hyph)
  end

  def test_true_should_gsub?
    gsub=GsubHyphen.new
    assert_equal(true,gsub.should_gsub?("yodel"))
  end

  def test_false_should_gsub?
    test=GsubHyphen.new
    assert_equal(false,test.should_gsub?("-gsub"))
  end

end

