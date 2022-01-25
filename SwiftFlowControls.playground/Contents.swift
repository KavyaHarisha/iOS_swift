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

/*
 Swift for-in Loop:
 Loops are used to repeat a block of code.
 There are 3 types of loops in Swift:

 for in loop
 while loop
 repeat...while loop
 
 1)Swift for-in Loop:
 In Swift, the for-in loop is used to run a block of code for a certain number of times. It is used to iterate over any sequences such as an array, range, string, etc.

 The syntax of the for-in loop is:

 for val in sequence{
   // statements
 }
 Here, val accesses each item of sequence on each iteration. Loop continues until we reach the last item in the sequence.
 */

let languages = ["iOS", "Java","Python","Java Script"]
for langType in languages {
    print("\(langType)", terminator: "\t")
}

/*
 for Loop with where Clause:
 In Swift, we can also add a where clause with for-in loop. It is used to implement filters in the loop. That is, if the condition in where clause returns true, the loop is executed.
 */
print("")
for langTypes in languages where langTypes != "Java Script" {
    print(langTypes,terminator: "\t")
}
/*
 for Loop With Range
 A range is a series of values between two numeric intervals. For example,
 var values = 1...3
 */
print()
for number in 1...4 {
    print(number, terminator: "\t")
}
print()
/*
 for Loop with Stride Function:
 If we want a loop to increment by some fixed value in each iteration, instead of range, we have to use stride(from:to:by) function.
 */
for number in stride(from: 1, to: 10, by: 3) {
    print(number, terminator: "\t")
}
print()

/*
 Swift while Loop:
It is used to run a specific code until a certain condition is met.

 The syntax of while loop is:

 while (condition){
   // body of loop
 }
 Here,

 A while loop evaluates condition inside the parenthesis ().
 If condition evaluates to true, the code inside the while loop is executed.
 condition is evaluated again.
 This process continues until the condition is false.
 When condition evaluates to false, the loop stops.
 */

var currentLevel = 0, finalLevel = 5
while (currentLevel < finalLevel) {
    print("You have passed level \(currentLevel)")
    currentLevel += 1
}
print("Successfully completed all game levels")
/*
 repeat...while Loop:
 
 The repeat...while loop is similar to while loop with one key difference. The body of repeat...while loop is executed once before the test expression is checked.
 The syntax of repeat..while loop is:
 repeat {
   // body of loop
 } while (condition)
 Here,

 The body of the loop is executed at first. Then condition is evaluated.
 If condition evaluates to true, the body of the loop inside the repeat statement is executed again.
 condition is evaluated once again.
 This process continues until condition evaluates to false. Then the loop stops.
 */
var currentNumber = 1, finalNumber = 5
repeat {
    print(currentNumber,terminator: "\t")
    currentNumber = currentNumber + 1
} while(currentNumber < finalNumber)
print("")
/*
 Infinite while Loop
 If the condition of a while loop is always true, the loop runs for infinite times (until the memory is full). This is called infinite while loop. For example,

 while (true) {
     print("Endless Loop")
 }
 
 Notes:
 --> A for-in loop is usually used when the number of iterations is known
 --> However, a while loop is usually used when the number of iterations are unknown.
 */

/*
 Nested Loops in Swift:
 If a loop exists inside the body of another loop, it's called a nested loop.
 --> Swift Nested for Loop:
 A nested for loop includes one for loop inside another for loop
 */
for week in 1...2 {
    print("week: \(week)")
    for day in 1 ... 7 {
        print(" Day \(day)")
    }
    print("")
}
/*
 Swift for Loop inside a while Loop
 We can also create nested loops of different types. That is, we can put a for loop inside a while loop and vice versa.
 */
var weeks = 2
var day = 1

// outer while loop
while (day <= weeks){
  print("Week: \(day)")

  // inner for loop
  for dayVlaue in 1...5{
      print("  Day:  \(dayVlaue)")
    }

    day = day + 1
}
/*
 1. break inside Nested Loop:
 When we use a break statement inside the inner loop, it terminates the inner loop but not the outer loop.
 */
// outer loop
for week in 1...3 {
  print("Week: \(week)")

  // inner loop
  for day in 1...5 {


    if(week == 2) {
      // use of break statement
      break
      }

    print("  Day:  \(day)")
   }

  print("")
}
/*
 if(week == 2) {
   break
 }
 Hence, days for week 2 are not printed. However, the outer loop that prints week is unaffected.
 
 2. continue inside a Nested Loop:

 Similarly, when we use a continue statement inside the inner loop, it skips the current iteration of the inner loop only.
 */
// outer loop
for week in 1...2 {
  print("Week: \(week)")

  // inner loop
  for day in 1...5 {

    // use of continue statement
    if(day % 2 != 0) {
      continue
      }

   print("  Day:  \(day)")
   }

  print("")
}
/*
 if(day % 2 != 0) {
   continue
 }
 Here, the continue statement is executed when the value of day is odd. Hence, the program only prints those days that are even.

 We can see the continue statement has affected only the inner loop. The outer loop is working without any problem.
 */

/*
 Swift break Statement:
 The break statement is used to terminate the loop immediately when it is encountered.
 --> Swift break statement with for loop:
 We can use the break statement with for loop to terminate the loop when certain condition is met.
 */
for numbers in 1...5 {
    if(numbers == 3) {
        break
    }
        print(numbers)
}
/*
 -->break with while Loop:
 We can also terminate a while loop using the break statement.
 */
var whileVar = 1
while(whileVar<=5){
    if(whileVar > 3){
        break
    }
    print("5 * \(whileVar)=", 5*whileVar)
    whileVar = whileVar + 1
}

/*
 -->Swift break statement with nested loops:
 When we use the break statement with nested loops, it terminates the inner loop.
 */
for num in 1...3 {
    for num1 in 1...3 {
        if(num == 2) {
            break
        }
        print("num = \(num), num1 = \(num1)")
    }
}

/*
 Swift Labeled break:
 When using nested loops, we can terminate the outer loop with a labeled break statement.
 */
outerLoop: for i in 1...3 {
    for j in 1...3 {
        if(i == 2){
            break outerLoop
        }
        print("i = \(i), j = \(j)")
    }
}
/*
 Swift continue Statement:
 The continue statement is used to skip the current iteration of the loop and the control flow of the program goes to the next iteration.
 */
//Swift continue Statement With for Loop
for i in 1...3 {
    if(i == 2){
        continue
    }
    print("The i value is \(i)")
}
//continue with while loop
var n = 0
while(n<10) {
    n += 1
    if(n % 2 == 0){
        continue
    }
    print(n)
}
//Swift continue statement with nested loops
for i in 1...3 {
    for j in 1...3 {
        if(i == 2){
            continue
        }
        print("i = \(i), j = \(j)")
    }
}
/*
 Swift Labeled continue:
 When using nested loops, we can skip the current iteration of the outer loop with a labeled continue statement.
 */

outerForLoop: for i in 1...3 {
    for j in 1...3 {
        if(j==3){
            continue outerForLoop
        }
        print("i = \(i), j = \(j)")
    }
}

/*
 Swift guard Statement:
 In Swift, we use the guard statement to transfer program control out of scope when certain conditions are not met.

 The guard statement is similar to the if statement with one major difference. The if statement runs when a certain condition is met. However, the guard statement runs when a certain condition is not met.
 The syntax of the guard statement is:

 guard expression else {
   // statements
   // control statement: return, break, continue or throw.
 }
 Here, expression returns either true or false. If the expression evaluates to

 true - statements inside the code block of guard are not executed
 false - statements inside the code block of guard are executed
 Note: We must use return, break, continue or throw to exit from the guard scope.
 Note: The use of control statements like continue, break, etc. is compulsory. Otherwise, we will get an error: 'guard' body must not fall through, consider using a 'continue' or 'return' to exit the scope
 The guard statement is generally used with functions.
 */

func checkOddEven() {
    let number = 33
    guard number % 2 == 0 else {
        print("The number is odd")
        return
    }
    
    print("The number is even")
}
checkOddEven()
//guard with multiple conditions

func checkJobEligibility(){
    let age = 25
    guard age >= 18, age <= 40 else {
        print("Not eligible for job")
        return
    }
    print("You are eligible for job")
}
checkJobEligibility()
//guard-let Statement

func checkAge() {
    var age: Int? = nil
    guard let myAge = age else {
        print("Age is undefined")
        return
    }
    print("My age is \(myAge)")
}
checkAge()
//The guard statement is introduced as an alternative to the if statement.
