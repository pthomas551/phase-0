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