# Your Code Here
def map (array)
newArray = []
counter = 0;
  while counter < array.size
    newArray.push(yield(array[counter]))
    counter += 1
  end
  return newArray
end

def reduce(array, starting_value = nil)
  if (starting_value != nil)
    sum = starting_value
    counter = 0
  else
    sum = array[0]
    counter = 1
  end

  while (counter < array.length)
    sum = yield(sum, array[counter])
    counter += 1
  end

  sum

end
