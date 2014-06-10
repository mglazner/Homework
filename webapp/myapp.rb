
class Myapp

SECRETID={"Tony Stark"=>"Ironman","Steve Rogers"=>"Captain America","Bruce Banner"=>"The Hulk","The Avengers"=>"The Avengers"}

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

