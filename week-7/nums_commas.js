// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Paul Dynowski.

// Pseudocode

// CREATE function separateComma
//   ACCEPTS Integer
// CONVERT Integer to String
// REVERSE String
// CONVERT String to array
// INITIALIZE counter variable
// INITIALIZE target array
// ITERATE over string array
//   PUSH each number to target array
//   INSERT comma in target array after every 3rd digit UNLESS last character was end of array
// JOIN target array into String
// REVERSE String
// ok..strange, I've rejoined a couple times and dont hear/see anything from you, maybe try refreshing on your end?
// ok

// Initial Solution
/*
function separateComma(number_to_separate) {
  var number_array = number_to_separate.toString().split('').reverse();
  var target_string = [];
  for(var index_count = 0; index_count < number_array.length; index_count++){
    target_string += number_array[index_count];
    if((index_count + 1) % 3 === 0 && index_count !== number_array.length - 1) {
    target_string += ','
    };
  };
  target_string = target_string.split('').reverse().join('');
  console.log(target_string);
  return target_string

}
*/

// Refactored Solution

function separateComma(number_to_separate) {
// initialize array with separate string values for each digit
  var number_array = number_to_separate.toString().split('');
// reverse number array
  number_array = number_array.reverse();
// initialize target string for storing result
  var result = '';

// iterate over number array adding commas after every 3rd digit

  for(var index_count = 0; index_count < number_array.length; index_count++) {
    result += number_array[index_count];
    if((index_count + 1) % 3 === 0 && index_count !== number_array.length - 1) {
      result += ',';
    }

  };
// reverses target_string back to original order
  result = result.split('').reverse().join('');
  console.log(result);
  return result;
}


// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  !separateComma(Math.floor(1000*Math.random())-1 ).includes(','),
  '1-3 digit number does not return a comma.',
  '1. '
)

assert(
  separateComma(Math.max(Math.floor(1000000*Math.random())-1,1000) ).includes(','),
  '4-6 digit number returns a comma.',
  '2. '
)


separateComma(1234567);
separateComma(24436546435435334);
separateComma(324235436565123443);


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

The string based nature of the approach was the same that I used in the previous challenge but we opted to make it simpler to accommodate the requirements of JS.

What did you learn about iterating over arrays in JavaScript?

JS does not offer as many tools for iterating over arrays but the greater simplicity can be helpful since it does not require knowing the syntax of multiple methods.

What was different about solving this problem in JavaScript?

JS definitely required a simpler solution because there were not as many methods to call on to assist.

What built-in methods did you find to incorporate in your refactored solution?
We looked through the available methods and didn't find any that made sense (especially since we did some refactoring along the way.) Instead we decided to focus on the optional part of the challenge which was a helpful learning process.

*/