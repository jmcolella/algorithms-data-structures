require 'pry'
def quick_sort( array )
  # use a helper function to handle low and hi values
  quick_sort_helper( array, 0, array.length - 1 )
end

def quick_sort_helper( array, first, last )

  # only run recursion if the low index is less than the hi index
  if first < last

    # use helper function to determine partition point
    part = partition( array, first, last - 1 )

    # recurse through array on each side of the partition point (not including the partition itself)
    quick_sort_helper( array, first, part - 1 )
    quick_sort_helper( array, part + 1, last )
  end

  # return the now sorted array
  return array
end

# lo = lowest value
# hi = highest value
def partition( array, lo, hi )
  # hi represents the index right before the pivot, so pivot value is the next value
  # pivot is always highest value in the input array
  pivot = array[hi + 1]
  # hold on to pivot_idx for later
  pivot_idx = hi + 1

  while lo <= hi do
    # if the low value is greater than pivot value, stop and start checking hi values
    if array[lo] >= pivot
      # if high value is less than pivot AND low value is greater than pivot
      # swap values
      # continue moving up low values
      if array[hi] <= pivot
        array[lo], array[hi] = array[hi], array[lo]
        lo += 1
      else
        # if high value is greater AND low value is greater, keep moving down high values
        hi -= 1
      end
    else
      # if low value is less than pivot, keep moving up low values
      lo += 1
    end
  end

  # swap the new low value with the pivot if it is greater than the pivot
  if array[lo] > pivot
    array[lo], array[pivot_idx] = array[pivot_idx], array[lo]
  end

  # the new low value is the next partition point
  return lo
end
