// User stories
// As a user, I want to start with two separate series of numbers, one with an odd number of elements and an even number of elements respectively.
// Then I want to be able to select either of the series of numbers and calculate the sum,
// mean,
// and median of the values contained within.
// These operations should be carried out separately from one another (i.e. not done all at once.)

var oddArray = [30,194,103,2049,2021]

var evenArray = [4785,484,2459,4,67,85]

var sumOfArray = 0

function arraySummer (inputArray) {

  for(i=0; i<inputArray.length; i +=1){
  sumOfArray += inputArray[i]
  }

  return sumOfArray
};

function arrayMeanCalculator (inputArray){

  var meanOfArray = arraySummer(inputArray)/inputArray.length;
  return meanOfArray
}


function arrayMedianFinder (inputArray){

  function sortArray(a,b){

    return (a - b);
  }

  var sortedArray = inputArray.sort(sortArray);
  var arrayMedian = 0;
  var medianIndex = sortedArray.length/2

  if (inputArray.length%2 == 1){
    arrayMedian = sortedArray[medianIndex]
  } else {
    arrayMedian = (sortedArray[medianIndex] + sortedArray[(medianIndex)-1])/2
  };


  /* I followed the pseudocode exactly as it says, but the above function produces undefined for odd sized arrays
    The code for the odd case should actually look like:
    arrayMedian = sortedArray[(sortedArray.length - 1 )/2]
  */

  /* I did not change the incorrect code and refactored it as it stood.  So, the odd case will still produce undefined. */

  return arrayMedian;

}

/* As a user, I want to take a group of numbers and find the mean and median of the group.

To find an artithmentic mean, I need to sum the numbers together, then divide that sum but the number of numbers.  The result is the mean.

To find the arithmetic median, I need to find the value that is in the exact center of the data set.  If there are an even number of values in the data set, the median is the average of these two.  If there is an odd number of values in the data set, the median is the number in the exact middle of the set. */


// Test results
// Test 1 failed; sum function name was not sum.
// Test 3 failed; sum should return the sum of all elements in an array with an even length.
// Test 4 failed; mean function name was not mean.
// Test 6 failed; mean should return the average of all elements in an array with an even length.
// Test 7 failed; median function name was not median.
// Test 8 failed; median should return the median value of all elements in an array with an odd length.