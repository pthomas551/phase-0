// JavaScript Olympics

// I paired [Caroline Kenworthy & Phil Thomas] on this challenge.

// This challenge took me [1.75] hours.


// Bulk Up

/*
var athletes = {
  'Sarah Hughes': {
    name: 'Sarah Hughes',
    event: 'tennis'
  },
  'Michael Phelps': {
    name: 'Michael Phelps',
    event: 'swimming'
  },
  'Ronda Rousey': {
    name: 'Ronda Rousey',
    event: 'MMA'
  }
}

//declare function AddWin that adds win property
function addWin(athlete) {
  athlete.win = athlete.name + ' won in ' + athlete.event
}




// driver code

addWin(athletes['Sarah Hughes'])

console.log(athletes['Sarah Hughes'].win);
*/

// Jumble your words
/*
function reverseString(string) {
  string.split('').reverse().join('');
}
*/

// 2,4,6,8
/*
function isEven(value) {
  return value % 2 == 0;
}

function returnEvens(nums_array) {
 return nums_array = nums_array.filter(isEven);
}




//driver code
var array = [1,2,3,4,5,6,7,8,9,10];
console.log(returnEvens(array));
*/
// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


// driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

It was good to get more understanding of array manipulation and function syntax.

What are constructor functions?

Constructor functions are templates for creating new objects in JS. They can also contain instance methods.

How are constructors different from Ruby classes (in your research)?

A constructor is just another type of function in JS, whereas Ruby recognizes classes as a special type of object that has special class-specific behaviors.
*/