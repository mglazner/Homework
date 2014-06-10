require 'minitest\autorun'
require '.\myapp'

class MyappTest < MiniTest::Unit::TestCase

  def test_new
    fred=Myapp.new
	refute_nil(fred)
  end
  
  def test_missing
    fred=Myapp.new
	status,headers,test=fred.call({"PATH_INFO"=>"/Frank"})	
	assert_equal(404,status)
  end
  
  def test_statuscode200
    fred=Myapp.new 
	status,headers,test=fred.call({"PATH_INFO"=>"/tonystark.txt"})	
	assert_equal(200,status)
  end
  
  def test_headers
    fred=Myapp.new
	status,headers,test=fred.call({"PATH_INFO"=>"/Ironman"})	
	assert_equal({"Content-Type"=>"text"},headers)
  end
  
  def test_tonystark
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/tonystark.txt"})	
	assert_equal(["You know, the question I get asked most often is, 'Tony, how do you go to the bathroom in your suit?' [Pauses, making relieved face] Just like that."],test[2])
  end
  
  def test_stevenrogers
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/stevenrogers.txt"})	
	assert_equal(["I suppose it's too late to use the bathroom?"],test[2])
  end
  
  def test_brucebanner
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/brucebanner.txt"})	
	assert_equal([" Thanks, but the last time I was in New York I kind of broke...Harlem."],test[2])
  end
  
  def test_theavengers
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/theavengers.txt"})	
    assert_equal(true,test[2][0].start_with?("Loki:"))
	assert(test[2][0].start_with?("Loki:"))
  end
  
end