function binarySearch( arr, target, low, high ) {
  low = low != 0 ? low : 0;
  const mid = parseInt( ( ( low + high ) / 2 ).toFixed() );

  if ( arr[mid] === target ) {
    return mid;
  }

  if ( low < high ) {
    if ( target < arr[mid] ) {
      high = mid - 1;

      return binarySearch( arr, target, low, high );
    } else {
      low = mid + 1;

      return binarySearch( arr, target, low, high );
    }
  } else {
    return false
  }
};

// Example search. Run `node binary_search.js` in the terminal to see output

const exArr = [1,2,3,4,5,6,7,8,9,10,11,12,14,16,34,60,90,100];
const initialHigh = exArr.length - 1;
const target = 90;

console.log( "Array to search:" );
console.log( exArr );
console.log( "Target:" );
console.log( target );
console.log( "----------------------" );
console.log( "Position of target found:" );
console.log(binarySearch( exArr, target, 0, initialHigh ));
