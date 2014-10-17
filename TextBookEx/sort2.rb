class Sorter

attr_reader :sorted

  def initialize 
    @sorted=[]
  end
  
  def sort(input)
    input.each do |i|
      if @sorted==[]
        @sorted<<i
      elsif i<@sorted[0]
        @sorted.unshift(i)
      elsif i>@sorted[-1]
        @sorted.push(i)
      else
        index=0
        until i<@sorted[index]
          index+=1
        end
        @sorted.insert(index,i)
      end
    end
    @sorted
  end
  
end


#puts "Welcome to the wonderful world of sorting!"
#puts "What letters would you like to sort today?"
#vocab=["television","burkha","apple","garibaldi","frankincense","echo"]
#sortedlist=Sorter.new
#puts sortedlist.sort(vocab)


 # def sort(input)
   # @sorted<<"M3VAN.v3-k"
   # input.each do |i|
     # index=0
     # if @sorted[(index+1)]==""
       # @sorted.push(i)
    #  end
      # unless i>@sorted[(index)]
        # index=(index+1)
      # end
    # @sorted.insert(index,i) 
    # @sorted.delete"M3VAN.v3-k"
    # end

    # @sorted<<input[0]
     # input.each do |i|   
       # index=0 
          # until i>=(@sorted[index])
            # index=(index+1)
          # end

        # @sorted.insert(index,i)
      # end

    # puts @sorted









#1. look at each item in the list, comparing it to the next item:
#1.1. if the next item is less than the current item, swap them
#2. when you reach the end of the list, if you did any swaps, go back to
#step 1 and start over
#
#That's called "bubble sort."
#
#1. designate a second list, called the "sorted list"
#2. take an item from the unsorted list (call the item "X")
#3. look at each item in the sorted list:
#3.1. if X is less than the unsorted item, put X into the sorted list
#immediately before the unsorted item that's bigger than it
#4. if you get to the end of the unsorted list without putting X in, add
#X to the end of the unsorted list
#5. if any items remain in the unsorted list, go back to step 2 and
#repeat

#That's called "insertion sort."


#while answer!=""
 #while @list[index]!=nil
 #if (i.downcase)<(@sorted[index].downcase)
    #  index=(index+1)
    #elsif (i.downcase)>=(@sorted[index].downcase)
    #  @sorted.insert(index,i)
    #end
