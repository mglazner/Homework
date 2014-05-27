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
	status,headers,test=fred.call({"PATH_INFO"=>"/Ironman"})	
	assert_equal(200,status)
  end
  
    def test_headers
    fred=Myapp.new
	status,headers,test=fred.call({"PATH_INFO"=>"/Ironman"})	
	assert_equal({"Content-Type"=>"text"},headers)
  end
      
  def test_ironman
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/Ironman"})	
	assert_equal(["Tony Stark"],test[2])
  end
  
  def test_captainamerica
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/CaptainAmerica"})	
	assert_equal(["Steven Rogers"],test[2])
  end
  
  def test_thehulk
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/TheHulk"})	
	assert_equal(["Bruce Banner"],test[2])
  end
  
  def test_theavengers
    fred=Myapp.new
	test=fred.call({"PATH_INFO"=>"/TheAvengers"})	
	assert_equal(["Secret identities are SO last year."],test[2])
  end
  
end