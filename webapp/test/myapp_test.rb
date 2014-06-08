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
	  assert_equal(["Loki: What have I to fear?
Tony Stark: The Avengers. It's what we call ourselves. Sorta like a team. Earth's Mightiest Heroes type thing.
Loki: Yes. I've met them
Tony Stark: Yeah, takes us a while to get any traction I'll give you that one. But let's do a head count here. Your brother, the demigod. A super soldier, living legend who kinda lives up to the legend. A man with breathtaking anger management issues. A couple of master assassins and YOU, big fella, you've managed to piss off every single one of them.
Loki: That was the plan.
Tony Stark: Not a great plan."],test[2])
  end
  
end