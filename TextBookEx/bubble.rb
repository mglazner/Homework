class Bubble

def initialize
  @bubbler=[]
end

def bubble(input)
  (input.length).times do 
    index=0
    while (index+1)!=(input.length)
      if input[index]>input[(index+1)]
        input[index],input[(index+1)]=input[(index+1)],input[index]
      end
      index+=1
    end
  end
  input
end

end

vocab=["b","a","e","g","c","d","f"]
input=Bubble.new

p input.bubble(vocab)


#this is supposed to be the bubble sort method; swapping is my friend