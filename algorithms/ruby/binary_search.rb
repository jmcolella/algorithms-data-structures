def binary_search( arr, target, low, high )
  low = low != 0 ? low : 0
  mid = ( low + high ) / 2

  return mid if arr[mid] == target

  if low < high
    if target > arr[mid]
      low = mid + 1
      high = arr.length - 1

      return binary_search( arr, target, low, high )
    elsif target < arr[mid]
      high = mid - 1

      return binary_search( arr, target, low, high )
    end
  else
    return false
  end
end

# Example search. Run `ruby binary_search.rb` in the terminal to see output
ex_arr = [1,2,3,4,5,6,7,8,9,10,11,12,14,16,34,60,90,100]
target = 16
puts "Array to search:"
p ex_arr
puts "Target:"
p target
puts "----------------------"
puts "Position of target found:"
p binary_search( ex_arr, target, 0, ex_arr.length - 1 )
