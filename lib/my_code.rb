# Your Code Here
def map(source_array)
  i = 0 
  new = []
  while i < source_array.length do 
    new.push(yield(source_array[i]))
    i += 1 
  end
  return new
end

def reduce(source_array, starting = 0)
  i = 0 
  sum = starting
  while i < source_array.length do
    sum = yield(source_array[i], sum)
    i += 1 
  end
  if sum
    return sum
  else
    return false
  end
end
    