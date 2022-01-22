import UIKit

/*
 Swift if, if...else Statement:
 We use the if statement to run a block code only when a certain condition is met.
 In Swift, there are three forms of the if...else statement.

 if statement
 if...else statement
 if...else if...else statement
 
 1. Swift if Statement:
 The syntax of if statement in Swift is:

 if (condition) {
   // body of if statement
 }
 The if statement evaluates condition inside the parenthesis ().

 If condition is evaluated to true, the code inside the body of if is executed.
 If condition is evaluated to false, the code inside the body of if is skipped.
 Note: The code inside { } is the body of the if statement.
 */
let positiveNumber = 20
if(positiveNumber > 10){
    print("The positiveNumber is greater than 10")
}
print("After the if statement block")
let negitiveNumber = -3
if(negitiveNumber > 10){
    print("The given number is greater than 10")
}
print("After the if statement block and skip the if block code")

/*
 2. Swift if...else Statement
 An if statement can have an optional else clause.

 The syntax of if-else statement is:

 if (condition) {
   // block of code if condition is true
 }
 else {
   // block of code if condition is false
 }
 The if...else statement evaluates the condition inside the parenthesis.
 If the condition evaluates to true,
 the code inside if is executed
 the code inside else is skipped
 If the condition evaluates to false,

 the code inside else is executed
 the code inside if is skipped
 */
let ifElsePositiveNumber = 10
if(ifElsePositiveNumber > 0){
    print("The given number is positive")
} else {
    print("The given number is negative")
}
print("This statement is always executed after if...else block of if block execute")
let ifElseNegativeNumber = -5
if(ifElseNegativeNumber > 0){
    print("The given number is positive")
} else {
    print("The given number is negative")
}
print("This statement is always executed after if...else block of else block execute ")
/*
 3. Swift if...else if...else Statement
 The if...else statement is used to execute a block of code among two alternatives.

 However, if you need to make a choice between more than two alternatives, then we use the if...else if...else statement.

 The syntax of the if...else if...else statement is:

 if (condition1) {
     // code block 1
 }

 else if (condition2){
     // code block 2
 }

 else {
     // code block 3
 }
 Here,

 If condition1 evaluates to true, code block 1 is executed.
 If condition1 evaluates to false, then condition2 is evaluated.
 If condition2 is true, code block 2 is executed.
 If condition2 is false, code block 3 is executed.
 */
let ifIFElseElseNumber = 0
if(ifElsePositiveNumber > 0){
    print("The ifElsePositiveNumber is positive")
} else if(ifElsePositiveNumber < 0){
    print("The ifElsePositiveNumber is negative")
} else {
    print("The ifElsePositiveNumber is 0")
}

/*
 Swift nested if Statement
 You can also use an if statement inside of an if statement. This is known as a nested if statement.

 The syntax of nested if statement is:

 // outer if statement
 if (condition1) {
     // statements

     // inner if statement
     if (condition2) {
     // statements
     }
 }
 Notes:

 We can add else and else if statements to the inner if statement as required.
 We can also insert inner if statement inside the outer else or else if statements(if they exist)
 We can nest multiple layers of if statements.
 */

/*
 Swift switch Statement:
 The switch statement allows us to execute a block of code among many alternatives.

 The syntax of the switch statement in Swift is:

 switch (expression)  {
   case value1:
     // statements
   case value2:
     // statements
   default:
     // statements
 }
 The switch statement evaluates an expression inside parentheses ().

 If the result of the expression is equal to value1, statements of the case value1: are executed.
 If the result of the expression is equal to value2, statements of the case value2: are executed.
 If there is no match, statements of the default case are executed.
 */
let dayOfWeek = 5
switch dayOfWeek {
case 1: print("Sunday")
case 2: print("Monday")
case 3: print("Tuesday")
case 4: print("Wednesday")
case 5: print("Thursday")
case 6: print("Friday")
case 7: print("Saturday")
default: print("Invalid day")
}

/*
 Switch Statement with fallthrough:
 If we use the fallthrough keyword inside the case statement, the control proceeds to the next case even if the case value does not match with the switch expression.
 */
switch dayOfWeek {
case 1: print("Sunday")
case 2: print("Monday")
case 3: print("Tuesday")
case 4: print("Wednesday")
case 5: print("Thursday")
    fallthrough
case 6: print("Friday")
case 7: print("Saturday")
default: print("Invalid day")
}

//Switch Statement with Range
let ageGroup = 44
switch ageGroup {
case 0...16 : print("Child group")
case 17...30 : print("Young adults group")
case 31...45 : print("Middle-aged adults group")
default: print("Old-aged adults group")
}
//Tuple in Switch Statement
let userInfo = ("Jhon", 20)
switch userInfo {
case ("David", 10): print("David age is 10")
case ("Kevin",40): print("Kavin age is 40")
default: print("Un know user information")
}
