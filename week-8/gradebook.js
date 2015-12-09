/*
Gradebook from Names and Scores

I worked on this challenge [with: Zollie Barnes]
This challenge took me [1.25] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.
/*
var gradebook = {};

function addStudent(student) {
  gradebook[student] = {};
}
// gradebook = {"Joseph": {}, "Susan": {}, "William": {}, "Elizabeth":{}}
students.forEach (addStudent);

function defineScores(student) {
  gradebook[student].testScores = [];
}


for (var count = 0; count < students.length; count++) {
   defineScores(students[count]);
   gradebook[(students[count])].testScores = scores[count];
}

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(){}

function average (ints){
  var sum = 0;
  for(var element = 0; element < ints.length; element++)
    {
      sum += ints[element];
    }
  return sum/ints.length;
}

gradebook.getAverage = function(string){
  return average(gradebook[string].testScores);
}
*/
// __________________________________________
// Refactored Solution
// define gradebook object
var gradebook = {};
// add studentName to gradebook
function addStudent(studentName) {
  gradebook[studentName] = {};
}
// iterate through names and apply addstudent
students.forEach (addStudent);
// define testScores array for studentName in gradebook
function defineScores(studentName) {
  gradebook[studentName].testScores = [];
}

// assign testScores for all students in gradebook
for (var count = 0; count < students.length; count++) {
   defineScores(students[count]);
   gradebook[(students[count])].testScores = scores[count];
}
// look up a student and add a score to their record
gradebook.addScore = function(studentName, score) {
  gradebook[studentName].testScores.push(score);
}
// take average of given array
function average(array) {
  var sum = 0;
  for(var element = 0; element < array.length; element++)
    {
      sum += array[element];
    }
  return sum/array.length;
}
// get average of testScores for given StudentName in gradebook
gradebook.getAverage = function(studentName) {
  return average(gradebook[studentName].testScores);
}


// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?

Adding functions to objects is a good way to make your code more efficient and intuitive. It's as if you were able to add a method to an array in Ruby.

How did you iterate over nested arrays in JavaScript?

We used a for loop that called the index of each nested array.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

Yes, we used the forEach method which was an efficient way to iterate over an array and carry out a simple function.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

