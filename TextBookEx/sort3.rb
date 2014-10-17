class Sorter

  def sort(input)
    sorted=[]
    input=input.clone
    until input.empty?
      min=input.min
      location=input.index(min)
      input.delete_at(location)
      sorted << min
    end
    p sorted
  end
  
end

puts "What words or letters would you like to sort today?"
  answer=gets.chomp!
  frank=Sorter.new
  greg=["angry","Amber","moose","are","are","scary"]
  frank.sort(greg)
p greg

