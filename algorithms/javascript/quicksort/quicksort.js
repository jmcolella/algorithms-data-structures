function quickSort( array, lo, hi ) {
  let partition;

  if ( lo < hi ) {
    partition = getPartition( array, lo, hi - 1 );

    quickSort( array, 0,  partition - 1 );
    quickSort( array, partition + 1 , hi );
  }

  return array;
}

function getPartition( array, lo, hi ) {
  let originalHi = hi;
  let pivot = array[ hi + 1 ];

  while ( lo <= hi ) {
    if ( array[lo] > pivot ) {
      if ( array[hi] < pivot ) {
        switchItems( array, lo, hi );
        lo++
      } else {
        hi -= 1
      }
    } else {
      lo++
    }
  }

  if ( array[lo] > pivot ) {
    switchItems( array, lo, originalHi + 1 );
  }

  return lo;
}

function switchItems( array, lo, hi ) {
  let loItem = array[lo];
  let hiItem = array[hi];

  array[lo] = hiItem;
  array[hi] = loItem;

}

module.exports = quickSort;
