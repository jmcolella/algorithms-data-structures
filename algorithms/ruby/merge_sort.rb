require 'pry'

def merge_sort( arr )
  return arr if arr.length == 1

  mid = arr.length / 2

  arr1 = merge_sort( arr[0...mid] )
  arr2 = merge_sort( arr[mid..-1] )

  merge( arr1, arr2 )
end

def merge( arr1, arr2 )

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

p merge_sort( [2,6,1,8,5,13] )
