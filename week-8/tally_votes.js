// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Bob Dorff
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

  */
// voteCount.president["Bob"] === 3

// add vote function
// iterate through votes object
// if name is already in voteCount for office
// increment vote count in VoteCount
// else create new name: votes pair for office in VoteCount
// get votes by iterating through votes accessing votes at voterNames
// iterate
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}




/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */

// Pseudocode
// add vote function
// iterate through votes object
// if name is already in voteCount for office
// increment vote count in VoteCount
// else create new name: votes pair for office in VoteCount
// get votes by iterating through votes accessing votes at voterNames
//
// __________________________________________
// Initial Solution

/*

function addVote(office, name) {
  if (voteCount[office].hasOwnProperty(name)) {
    voteCount[office][name]++;
  } else {
    voteCount[office][name] = 1;
  }
}

var voterNames = [];

function getVoterNames() {
  voterNames = Object.keys(votes);
}

var voterBallots = [];

function getVoterBallots() {
  for (var i = 0 ; i < voterNames.length; i++ ) {
    var voter = voterNames[i];
    var ballot = votes[voter];
    voterBallots.push(ballot);
  }
}

function tallyVotes(array) {
  for (var i = 0; i < voterBallots.length; i++ ) {
    var ballot = voterBallots[i];
    Object.keys(ballot).forEach(function(office) {
      addVote(office, ballot[office]);
    });
  }
}

function invert(object) {
  var new_obj = {};
  for (var prop in object) {
    if(object.hasOwnProperty(prop)) {
    new_obj[object[prop]] = prop;
    }
  }
  return new_obj;
}

function voteSort() {
  var offices = Object.keys(voteCount);
    for ( var i = 0 ; i < offices.length; i++) {
      var ballots = voteCount[offices[i]];
      var invertedBallots = invert(ballots);
      var voteTotals = Object.keys(invertedBallots);
      voteTotals.sort(function(a, b){return b-a});
      var winningTotal = voteTotals[0];
      officers[offices[i]] = invertedBallots[winningTotal];
  }
}

getVoterNames();
getVoterBallots();
tallyVotes(voterBallots);
voteSort();

*/


// __________________________________________
// Refactored Solution

// add vote to vote count object (creates new candidate property if does not already exist)
function addVoteToVoteCount(office, name) {
  if (voteCount[office].hasOwnProperty(name)) {
    voteCount[office][name]++;
  } else {
    voteCount[office][name] = 1;
  }
}
// create array with voter names
function getVoterNames() {
  voterNames = Object.keys(votes);
}
// get ballots from votes object for each voter in voterNames, stores in voterBallots
function getVoterBallots() {
  for (var i = 0 ; i < voterNames.length; i++ ) {
    voter = voterNames[i];
    voterBallots.push(votes[voter]);
  }
}
// iterates through voterBallots and calls addVoteToVoteCount for each property/value pair
function tallyVotes(array) {
  for (var i = 0; i < voterBallots.length; i++ ) {
    ballot = voterBallots[i];
    Object.keys(ballot).forEach(function(office) {
      addVoteToVoteCount(office, ballot[office]);
    });
  }
}
// function to invert an object for use in getWinner function
function invertObject(object) {
  var new_obj = {};
  for (var prop in object) {
    if(object.hasOwnProperty(prop)) {
      new_obj[object[prop]] = prop;
    }
  }
  return new_obj;
}
// returns winner for provided office
function getWinner(office) {
  ballots = voteCount[office];
  voteTotalsObject = invertObject(ballots);
  voteTotals = Object.keys(voteTotalsObject);
  winningTotal = voteTotals.sort(function(a, b){return b-a})[0];
  return voteTotalsObject[winningTotal];
}
// stores winner of provided office in officers object
function storeWinner(office) {
  officers[office] = getWinner(office);
}
// initialize arrays
var voterNames = [];
var voterBallots = [];
// call functions to retrieve ballots from votes object and tally
getVoterNames();
getVoterBallots();
tallyVotes(voterBallots);
// stores results for each office in officers object
for (var office in officers) {
  storeWinner(office);
}


// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

When iterating over nested objects in JS it is helpful to use functions to break down the task into as many discrete steps as possible.

Were you able to find useful methods to help you with this?

Yes, forEach and Object.keys were particularly helpful.

What concepts were solidified in the process of working through this challenge?

It was helpful to get more exposure to the handling of data structures in JS and options for JS iteration.

*/



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
  )

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
  )

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
  )

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
  )

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
  )

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
  )

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
  )

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
  )

