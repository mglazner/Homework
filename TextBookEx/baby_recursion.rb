# new kind of sorting: a hairy one
# recursion
# base case will terminate and returne a value
# and you building on top of 
# quicksort==recursive algorithm

# steps: 
# create base case and then pull all your hair out
# things to think about:
# base case for a sorting method is that an empty or one element array is sorted, so just return it 

# NOTES:
# def qsort also def split (which is the engine of the sorting) and pass it the midpoint as well as the input
# define base case==when subarrays are singletons, return qsort(array1)+qsort(array2)
# split(md pt, input)=array1, array 2
# end


def count_to_hundred(seed)
  if seed>=100 #base case for when to terminate
    return ##flowcontrol; leaving the method and HOW you leave 
  end
  seed+=1
  puts seed 
  count_to_hundred(seed)

end

count_to_hundred(55)

