
class Myapp

  def call(env)
    p env
    if env["PATH_INFO"]=="/"
      [404,{"Content-Type"=>"text"},["Please try again."]]
    elsif File.exists?("."+(env["PATH_INFO"]))
      result=File.read("."+(env["PATH_INFO"]))
      success(result)       
    else 
      [404,{"Content-Type"=>"text"},["Please try again."]]
    end
  end
  
  def success(name)
    [200,{"Content-Type"=>"text"},[name]] 
  end

end


