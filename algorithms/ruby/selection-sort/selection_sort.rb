def selection_sort( array )

  i = 0

  while i < array.length do
    j = i
    min_index = i
    while j < array.length do
      if array[j] < array[min_index]
        min_index = j
      end
      j += 1
    end

    array[i], array[min_index] = array[min_index], array[i]

    i += 1
  end

  return array
end
