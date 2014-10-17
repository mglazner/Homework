input=[7,5,6,3,2,4,7]

def split(input)
  half1=[]
  half2=[]
  mid=input[((input.length)/2)]
  input.each do |i|
    if i<mid
      half1.push(i)
    elsif i>mid
      half2.push(i)
    end
  end
  return half1,[mid],half2
end

def sort_recursion_style(input)
  if input.length<=1
    return input
  end
  p split(input)
  p arr1=sort_recursion_style((split(input))[0])
  p arr2=sort_recursion_style((split(input))[2])
  arr1+((split(input))[1])+arr2
end

p sort_recursion_style(input)

