require 'pry'

# bubble sort using nested iteration
def bubble_sort( array )
  i = 0

  while i < array.length - 1 do
    j = 0
    while j < array.length - 1 do
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
        j += 1
      end
      j +=1
    end
    i += 1
  end

  return array
end

# bubble sort using recursion
def bubble_sort_recursion( array, low, high )
  return array if low >= high

  i = low
  j = low + 1

  while j <= array.length - 1 do
    if array[i] > array[j]
      array[i], array[j] = array[j], array[i]
    end

    i += 1
    j += 1
  end

  bubble_sort_recursion( array, low, high - 1 )
end
