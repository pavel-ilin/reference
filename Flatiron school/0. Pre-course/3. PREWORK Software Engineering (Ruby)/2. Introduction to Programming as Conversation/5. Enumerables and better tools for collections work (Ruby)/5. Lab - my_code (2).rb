source_array=[1,2,3]

def map(source_array)
  new_array=[]
  i=0
  while i < source_array.length
    new_array.push(yield(source_array[i]))
    i+=1
  end
  return new_array
end

map(source_array){|n| n*-1}

def reduce(source_array,starting_point=0)
  i=0
  while i < source_array.length
  starting_point = yield(starting_point,source_array[i])
  i+=1
  end
  if starting_point==0
    starting_point=true
  end
  return starting_point
end
