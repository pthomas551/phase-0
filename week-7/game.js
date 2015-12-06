// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Destroy enemy fighter
// Overall mission: Survive; defeat enemy fighter
// Goals: Survive; defeat enemy fighter
// Characters: Player, enemy fighter
// Objects: Player, enemy fighter
// Functions: 1) approach, 2) fire missile, 3) fire guns, 4) retreat, 5) take damage

// Pseudocode
// Player object:
  // Intialize distance at 10
  // Intialize damage at 3
  // Approach function:
    //  Subtract distance by one
    //  Print "your distance is now: distance"
    //  If distance = 0; print "Cannot get closer!"
  // Fire missile function:
    //  If distance > 8: print "Too far to use weapons"
    //  If distance is between 3 and 8: print "Hit!"; call take damage on enemy function on enemy
    //  If distance is < 3: print "Too close for missiles. Switch to guns!"
  // Fire guns function:
    //  If distance > 3: print "Out of range for guns"
    //  If distance is < 3: print "Hit!"; call take damage on enemy
  // Retreat function:
    //  Increase distance by 1
    //  Print "your distance is now: distance"
  // Take damage function:
    //  Subtract damage by 1
    //  Print "You were hit! You can take damage more hits"
    //  If damage = 0: print "Destroyed; you lose!"
// Enemy object:
  // Intialize damage at 3
  // Decision function:
    // If player distance is > 8; call approach function
    // If player distance is between 3 and 8; call fire missiles function
    // If player distance is less than 3; call fire guns function
  // Approach function:
    // Reduce player distance by 1
  // Fire missile function:
    // print "You were hit!"; call take damage function on player
  // Fire guns function:
    // print "You were hit!"; call take damage function on player
  // Take damage function:
    //  Subtract damage by 1
    //  Print "Enemy was hit!"
    //  If damage = 0: print "Enemy destroyed; you win!"

// Intialize player
// Intialize enemy
// Call driver code

// Initial Code
/*
function Player() {
  this.damage = 3;
  this.approach = function() {
    if (distance == 0) {
      console.log('Cannot get closer!');
    } else {
      distance--;
      console.log('Your distance is now: ' + distance);
    }
  this.fireMissile = function() {
    if (distance > 8) {
      console.log('Too far to use weapons');
    } else if (distance >= 3 && distance <= 8) {
      console.log('Hit!');
      enemy.takeDamage();
    } else {
      console.log('Too close for missiles. Switch to guns!')
      }
    }
  this.fireGuns = function() {
    if (distance > 3) {
      console.log('Out of range for guns!')
    } else if (distance <= 3) {
      console.log('Hit!');
      enemy.takeDamage();
    }
  }
  this.retreat = function() {
    distance++;
    console.log('Your distance is now: ' + distance);
  }
  this.takeDamage = function() {
    this.damage--;
    if (this.damage == 0) {
      console.log('Destroyed; you lose!');
      return playerStatus = false;
    } else {
      this.damage--;
      console.log('You were hit! You can take ' + this.damage + ' more hits.');
      }
    }
  }
}

function Enemy() {
  this.damage = 3;
  this.decision = function() {
    if (distance > 8) {
      this.approach();
    } else if (distance > 3 && distance <= 8) {
      this.fireMissile();
    } else {
      this.fireGuns();
    }
  }
  this.approach = function() {
    if (distance != 0) {
      distance--;
      console.log('Your distance is now: ' + distance);
    }
  }
  this.fireMissile = function() {
    console.log('You were hit by missiles!')
    player.takeDamage();
  }
  this.fireGuns = function() {
    console.log('You were hit by guns!')
    player.takeDamage();
  }
  this.takeDamage = function() {
    this.damage--;
    console.log('Enemy was hit!')
    if (this.damage == 0) {
      console.log('Congratulations: you win!');
      return enemyStatus = false;
    }
  }

}
var distance = 10;
var player = new Player();
var enemy = new Enemy();
var playerStatus = true;
var enemyStatus = true;

*/




// Refactored Code

//initialize player object with damage capacity 3
function Player() {
  this.damageCapacity = 3;
  // function to approach enemy
  this.approach = function() {
    if (distance == 0) {
      console.log('Cannot get closer!');
    } else {
      distance--;
      console.log('Your distance to enemy is now: ' + distance);
    }
  // function for player to fire missiles (medium range weapon)
  this.fireMissile = function() {
    if (enemyStatus == false) {
      console.log('Enemy is already dead!');
    } else if (distance > 8) {
      console.log('Too far to use weapons');
    } else if (distance >= 3 && distance <= 8) {
      console.log('Hit!');
      enemy.takeDamage();
    } else {
      console.log('Too close for missiles. Switch to guns!');
      }
    }
  // function for player to fire guns (short range weapon)
  this.fireGuns = function() {
    if (enemyStatus == false) {
      console.log('Enemy is already dead!');
    } else if (distance > 3) {
      console.log('Out of range for guns!');
    } else if (distance <= 3) {
      console.log('Hit!');
      enemy.takeDamage();
    }
  }
  // function for player to retreat from enemy
  this.retreat = function() {
    distance++;
    console.log('Your distance is now: ' + distance);
  }
  // function that makes player take damage
  this.takeDamage = function() {
    this.damageCapacity--;
    if (this.damageCapacity == 0) {
      console.log('Destroyed; you lose!');
      return playerStatus = false;
    } else {
      this.damageCapacity--;
      console.log('You were hit! You can take ' + this.damageCapacity + ' more hits.');
      }
    }
  }
}

//initialize enemy object with damage capacity 3
function Enemy() {
  this.damageCapacity = 3;
  // function for enemy to take turn and do action based on conditions
  this.takeEnemyTurn = function() {
    if (enemyStatus == false) {
        console.log ('Enemy is already dead!');
    } else if (playerStatus == false) {
        console.log ('Player is already dead!');
    } else if (distance > 8) {
      distance--;
      console.log('Your distance to enemy is now: ' + distance);
    } else if (distance > 3 && distance <= 8) {
      console.log('You were hit by missiles!');
      player.takeDamage();
    } else {
       console.log('You were hit by guns!');
      player.takeDamage();
    }
  }
  // function for when enemy takes damage
  this.takeDamage = function() {
    this.damageCapacity--;
    if (this.damageCapacity == 0) {
      console.log('Congratulations: you win!');
      return enemyStatus = false;
    }
  }
}
// initialize our objects and variables
var distance = 10;
var player = new Player();
var enemy = new Enemy();
var playerStatus = true;
var enemyStatus = true;






// driver code

player.approach();
enemy.takeEnemyTurn();
player.fireGuns();
enemy.takeEnemyTurn();
player.approach();
player.approach();
player.approach();
player.fireMissile();
player.fireMissile();
player.fireMissile();
enemy.takeEnemyTurn();

// Reflection
// What was the most difficult part of this challenge?
// Probably the hardest part was coming up with an idea for the game and the ways the objects and functions should be setup. One that was done it was mostly smooth sailing aside from going down a rabbit hole trying to figure out how to grab console input before I realized it was not necessary.
// What did you learn about creating objects and functions that interact with one another?
// Objects and instance functions are a great way to create intuitive modes of interaction beween complex blocks of code.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// No, I looked at using a switch statement to make the conditionals more efficient but after reviewing the documentation I didn't see how it would make the code more intuitive.
// How can you access and manipulate properties of objects?
// It's easy, just call the property using the <objectName>.<property> syntax and carry out whatever operations you need - comparisons, math, etc. You can also precede the property name with delete to delete it.