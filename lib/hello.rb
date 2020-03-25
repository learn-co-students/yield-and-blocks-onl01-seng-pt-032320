def hello_t(array)
  i = 0
if !block_given?
  puts "Hey! No block was given!"
else
  while i < array.length
    yield array[i]
    i = i + 1
  end
end
array
end
# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
