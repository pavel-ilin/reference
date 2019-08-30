# My Code here....

def map_to_negativize(source_array)
   source_array.map() {|i| i * -1}
end

def map_to_no_change(source_array)
    source_array
end

def map_to_double(source_array)
   source_array.map() {|i| i * 2}
end

def map_to_square(source_array)
   source_array.map() {|i| i ** 2}
end

def reduce_to_total(source_array, starting_point = 0)
    source_array.reduce(starting_point) { |total, num| total + num}
end

def reduce_to_all_true(source_array)
    source_array.each do |n|
    if !n
      return false
    end
  end
  return true
end

def reduce_to_any_true(source_array)
    source_array.each do |n|
      if !!n == true
        return true
      end
    end
    return false
end 
