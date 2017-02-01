def insertion_sort( array )

  i = 0

  while i < array.length do
    # only want values in array with index greater than 0 and
    # less than the previous value in the array
    if i > 0 && array[i] < array[i-1]
      # hold on to unsorted value for insertion later
      insert_item = array[i]

      # must guard for i values less than zero
      # or else you will be comparing with the end of the array!
      while i > 0 && insert_item < array[i - 1]
        # move previous value up one in the array
        array[i] = array[i - 1]
        # set the previous value to a blank space for insertion later
        array[i - 1] = ''
        
        i -= 1
      end

      # array[i] is finally the blank space from array[i - 1]
      # now insert the saved value into its properly sorted spot
      array[i] = insert_item
    end

    i += 1
  end

  return array

end
