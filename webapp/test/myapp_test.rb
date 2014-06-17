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
    status,headers,test=fred.call({"PATH_INFO"=>"/Tony_Stark.txt"})	
    assert_equal(200,status)
  end
  
  def test_headers
    fred=Myapp.new
    status,headers,test=fred.call({"PATH_INFO"=>"/Tony_Stark.txt"})	
    assert_equal({"Content-Type"=>"text"},headers)
  end
  
  def test_tonystark
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/Tony_Stark.txt"})
    assert(test[2][0].include?("bathroom in your suit?"))
  end
  
  def test_steverogers
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/Steve_Rogers.txt"})
    assert(test[2][0].include?("too late to use the bathroom?"))
  end
  
  def test_brucebanner
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/Bruce_Banner.txt"})
    assert(test[2][0].include?("Puny god"))
  end
  
  def test_theavengers
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/The_Avengers.txt"})
    assert(test[2][0].include?("takes us a while to get any traction"))
  end
  
    def test_clintbarton
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/Clint_Barton.txt"})
    assert(test[2][0].include?("remember Budapest very differently"))
  end
  
    def test_natasharomanoff
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/Natasha_Romanoff.txt"})
    assert(test[2][0].include?("while Natasha whips butt"))
  end
  
    def test_thorodinsson
    fred=Myapp.new
    test=fred.call({"PATH_INFO"=>"/Thor_Odinsson.txt"})	
    assert(test[2][0].include?("80 people in two days"))
  end
  
end