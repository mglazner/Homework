require 'erb'

class Myapp

SECRETID=
  {"Tony Stark"=>"Ironman",
  "Steve Rogers"=>"Captain America",
  "Bruce Banner" =>"The Hulk",
  "The Avengers"=>"The Avengers",
  "Natasha Romanoff"=>"The Black Widow",
  "Clint Barton"=>"Hawkeye",
  "Thor Odinsson"=>"Thor, God of Thunder"}

  def call(env)
    p env
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
      success(template.result(binding))       
    else 
      [404,{"Content-Type"=>"text"},["Please try again."]]
    end
  end
  
  def success(content)
    [200,{"Content-Type"=>"text"},[content]] 
  end

end

#all my tests are broken. fix them.
#EC-- i put the hash for the secret ids but we could put it in the file itself