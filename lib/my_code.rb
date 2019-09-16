# Your Code Here
def map(source_array)
  counter = 0
  new_array = []

  while source_array[counter] do
    new_array.push(yield(source_array[counter]))
    counter +=1
  end
  new_array
end



def reduce(source_array, starting_value = 0)
  counter = 0
  result = starting_value

  while counter < source_array.length do
    result = yield(source_array[counter], result)
    counter += 1
  end

  if result
    return result
  else
    return false
  end
end
