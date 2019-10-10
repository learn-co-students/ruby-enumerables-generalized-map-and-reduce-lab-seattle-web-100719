def map(source_array)
    arr = []
    i = 0
    while i < source_array.length do
      arr[i] = yield(source_array[i])
      i += 1
    end
    arr
  end
  
  def reduce(source_array, starting_point = nil)
    i = 0
    if starting_point
      sum = starting_point
      i = 0
    else
      sum = source_array[0]
      i = 1
    end
    while i < source_array.length do
      sum = yield(sum, source_array[i])
      i += 1
    end
    sum
  end
