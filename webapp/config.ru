class Myapp

  def call(env)
    if env.has_value?("/Ironman")
      [200,{"Content-Type"=>"text"},["Tony Stark"]]
    elsif env.has_value?("/CaptainAmerica")
      [200,{"Content-Type"=>"text"},["Steven Rogers"]] 
    elsif env.has_value?("/TheHulk")
      [200,{"Content-Type"=>"text"},["Bruce Banner"]]
    elsif env.has_value?("/TheAvengers")
      [200,{"Content-Type"=>"text"},["Secret identites are SO overrated."]]
    else 
      [404,{"Content-Type"=>"text"},["Error 404: File Not Found"]]
    end
  end

end

run Myapp.new
