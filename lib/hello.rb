def hello_t(array)
  i = 0

  while i < array.length    #hello_t
    yield array[i]             #calls the block once for each element in the passed-in array
    i = i + 1                #Tim
  end                        #Tom
                             #Jim
  array         #returns the original array
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end


#fails gracefully when a block is not passed in

def hello_t(array)
  if block_given?
    i = 0

    while i < array.length
      yield(array[i])
      i = i + 1
    end

    array
  else
    puts "Hey! No block was given!"
  end
end
