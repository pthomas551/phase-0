// Pseudocode

// Initialize grocery list object with property item and value quantity
// Add item function: pushes item,quantity to object
// Remove item function: deletes item
// Update quantity function: looks up item and changes quantity
// Print function: prints 'You need <quantity> <item>'

// Initial solution
/*
var groceryList = {};

function addItem(item, quantity) {
  groceryList[item] = quantity;
}

function removeItem(item) {
  delete groceryList[item];
}

function updateQuantity(item, quantity) {
  groceryList[item] = quantity;
}

function printList() {
  for (item in groceryList) {console.log('You need ' + groceryList[item] + ' ' + item);}
}
*/
// refactored

var groceryList = {};

function addItem(item, quantity) {
  if (groceryList.hasOwnProperty(item)) {
    console.log('Item already exists');
  } else {
    groceryList[item] = quantity;
  }
}

function removeItem(item) {
  if (groceryList.hasOwnProperty(item)) {
    delete groceryList[item];
  } else {
    console.log('Item does not exist');
  }

}

function updateQuantity(item, quantity) {
  if (groceryList.hasOwnProperty(item)) {
    groceryList[item] = quantity;
  } else {
    console.log('Item does not exist');
  }

}

function printList() {
  for (item in groceryList) {
    console.log('You need ' + groceryList[item] + ' ' + item);
  }
}

// driver code
addItem('carrots', 5);
addItem('apples', 3);
addItem('cabbages', 2);
addItem('cabbages', 2);
printList();
updateQuantity('sdgd', 2);
removeItem('cabbages');
removeItem('dhgfd')
printList();
updateQuantity('apples', 4);
printList();

// reflection
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

I got some more reviews on conditionals and manipulating objects in JS.

What was the most difficult part of this challenge?

I don't think any of it was especially hard but I did get tripped up on dot versus bracket notation in the first run of the code.

Did an array or object make more sense to use and why?

An object made more sense since the data is organized in unique key-value combinations.
