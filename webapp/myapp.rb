require 'erb'

class Myapp

SECRETID=
  {"Tony Stark"=>"Ironman",
  "Steve Rogers"=>"Captain America",
  "Bruce Banner" =>"The Hulk",
  "The Avengers"=>"The Avengers",
  "Natasha Romanoff"=>"The Black Widow",
  "Clint Barton"=>"Hawkeye",
  "Thor Odinson"=>"Thor, God of Thunder"}
  
HEADSHOTS=
  {"Tony Stark"=>"http://media.tumblr.com/2f5a17eda02e948ddaf1c8247929ce2d/tumblr_inline_n5m30dgncd1sy66lj.gif",
  "Steve Rogers"=>"http://thefilmexperience.net/storage/2014/captainamerica-newcostume.jpg?__SQUARESPACE_CACHEVERSION=1396597020834",
  "Bruce Banner"=>"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRR_Fxff5pzYuTg6_ZYVA06X1XsGtqCFbbAA25zFBMLvoulfrJz",
  "The Avengers"=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX2U2QppPwQMo11uwUxUrrXG_R9SbTamGaUSxNIvLK0E2-QdkcGg",
  "Natasha Romanoff"=>"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTSfKqSe6_vXhWD7QMf15TSv2w2fOZcrG4-e2wKVK2aP2RwnPTQ",
  "Clint Barton"=>"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZOc-O1tlTEc2juYe0pVEhM2aRUSEaq7a_7Kk0EGN5hf-nNEya",
  "Thor Odinson"=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRk43atCq1Vj2Ouj1R_zMeV8MQ6yPeCBtQNDT33s_Y4-MZx4uS"}

  def call(env)
    p env
    if env["REQUEST_METHOD"]=="GET"   
      template=ERB.new(File.read("template.erb"))
      if env["PATH_INFO"]=="/"
        [404,{"Content-Type"=>"text"},["Please try again."]]
      elsif File.exists?("."+(env["PATH_INFO"]))
        quotetext=File.read("."+(env["PATH_INFO"]))
        heroname=env["PATH_INFO"]
        heroname.gsub!('_',' ')
        heroname.gsub!('/','')
        heroname.gsub!('.txt','')
        identity=SECRETID[heroname]
        picture=HEADSHOTS[heroname]
        success(template.result(binding))       
      else 
        [404,{"Content-Type"=>"text"},["Please try again."]]
      end
    elsif env["REQUEST_METHOD"]=="POST"
      success(env["rack.input"].read)
    end
  end
  
  def success(content)
    [200,{"Content-Type"=>"text"},[content]] 
  end

end

