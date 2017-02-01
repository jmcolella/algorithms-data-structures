var quickSort = require( './quicksort' );

describe ( 'quick_sort', function() {
  it ( 'returns a sorted array for [1,3,6,4,20,11,2,45,5]', function() {
    array = [1,3,6,4,20,11,2,45,5]
    input = [ array, 0, array.length - 1]
    output = [1,2,3,4,5,6,11,20,45]

    expect( quickSort.apply( null, input ) ).toEqual( output )
  });

  it ( 'returns a sorted array for [5,1,3,8,10,100,45,23,67,80]', function() {
    array = [5,1,3,8,10,100,45,23,67,80]
    input = [ array, 0, array.length - 1]
    output = [1, 3, 5, 8, 10, 23, 45, 67, 80, 100]

    expect( quickSort.apply( null, input ) ).toEqual( output )
  });

  it ( 'returns a sorted array for [54,26,93,17,77,31,44,55,20]', function() {
    array = [54,26,93,17,77,31,44,55,20]
    input = [ array, 0, array.length - 1]
    output = [17, 20, 26, 31, 44, 54, 55, 77, 93]

    expect( quickSort.apply( null, input ) ).toEqual( output )
  });
});
