# method that recursively divides input array into smaller chunks
# in order to sort with sort_and_merge method
def merge_sort( arr )
  return arr if arr.length == 1

  mid = arr.length / 2

  arr1 = merge_sort( arr[0...mid] )
  arr2 = merge_sort( arr[mid..-1] )

  sort_and_merge( arr1, arr2 )
end

# method that sorts divided arrays and merges
def sort_and_merge( arr1, arr2 )

  sorted_array = []

  while arr1.any? && arr2.any?
    if arr1[0] < arr2[0]
      sorted_array.push( arr1[0] )
      arr1.shift
    else
      sorted_array.push( arr2[0] )
      arr2.shift
    end
  end

  while arr1.any?
    sorted_array.push( arr1[0] )
    arr1.shift
  end

  while arr2.any?
    sorted_array.push( arr2[0] )
    arr2.shift
  end

  return sorted_array
end

# Example usage. Run ruby merge_sort.rb in terminal to see output
ex_arr = [2,6,1,8,5,13]
puts 'Array before sort:'
p ex_arr
puts '-------------------'
puts 'Array after sort:'
p merge_sort( ex_arr )
