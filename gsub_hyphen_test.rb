require 'minitest\autorun'
require_relative "gsubhyphen"
require "stringio"

class GsubHyphen_test < MiniTest::Unit::TestCase

  def test_initialize_gsub
    gsub=GsubHyphen.new
    refute_nil(gsub)
  end
  
  def test_process_line
    gsub=GsubHyphen.new
    gsub.process_line("Yo, homie Gee","whatever")
    assert_equal("Yo,~homie~Gee",gsub.data)
  end

  def test_process_multiple_lines
    gsub=GsubHyphen.new
    gsub.process_line("Yo, homie Gee.","whatever")
    gsub.process_line("How's it hangin'?","whatever")
    assert_equal("Yo,~homie~Gee.How's~it~hangin'?",gsub.data)
  end

  def test_true_should_process?
    test=GsubHyphen.new
    assert_equal(true,test.should_process?("yodel"))
  end

  def test_false_should_process?
    test=GsubHyphen.new
    assert_equal(false,test.should_process?("-gsub"))
  end
 
  def test_file_results
    test=GsubHyphen.new
    tester=""
    test.process_line("r t x y","yues")
    output=StringIO.new(tester)
    test.file_results(output)
    assert_equal(tester,"r~t~x~y\n"+"-"*30+"\n")
  end

end

