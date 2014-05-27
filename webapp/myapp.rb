class Myapp

  HEROES={
	"/Ironman"=>"Tony Stark",
	"/CaptainAmerica"=>"Steven Rogers",
	"/TheHulk"=>"Bruce Banner",
	"/TheAvengers"=>"Secret identities are SO last year."
  }
  
  def call(env)
    p env
    input=(env["PATH_INFO"])
    if HEROES[input]!=nil
      success(HEROES[input])
    else 
      [404,{"Content-Type"=>"text"},["Please try again."]]
    end
  end
  
  def success(name)
    [200,{"Content-Type"=>"text"},[name]] 
  end


end



