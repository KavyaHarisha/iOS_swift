import UIKit
import Foundation

/*
 Swift Functions:
 A function is a block of code that performs a specific task.
 Hence, a function helps us break our program into smaller chunks to make our code reusable and easy to understand.

 In Swift, there are two types of function:

 User-defined Function - We can create our own functions based on our requirements.
 Standard Library Functions - These are built-in functions in Swift that are available to use.
 
 Swift Function Declaration:
 func functionName(parameters)-> returnType {
   // function body
 }
 Here,
 func - keyword used to declare a function
 functionName - any name given to the function
 parameters - any value passed to function
 returnType - specifies the type of value returned by the function
 */

func greeting(){
    print("Hello to every one")
}
//Calling a function in Swift
greeting()
/*
 Function Parameters:
 As mentioned earlier, a function can also have parameters. A parameter is a value that is accepted by a function.
 */

func addNumbedrs(num1: Int, num2: Int) {
    let sumValue = num1 + num2
    print("Sum of two numbers is",sumValue)
}
addNumbedrs(num1: 5, num2: 7)
/*
 Note: The data type of function parameter should always match the data passed during the function call.
 
 Swift Function Return Type:
 A Swift function may or may not return a value. If we want our function to return some value, we can use the return statement.
 
 func addNumbers() -> Int {
   ...
   return sum
 }
 Here, we are returning the variable sum. The -> Int in the function definition specifies that the return type of the function is an integer.

 If a function returns any value, the return type of the value should be specified in the function definition (-> returnType). Otherwise, it will generate an error.
 */
func findSquare(num: Int) -> Int {
    return num * num
}
print("Square of the number is",findSquare(num: 6))
/*
 Swift Library Functions:
 In Swift, standard library functions are the built-in functions that can be used directly in our program. For example,

 print() - prints the string inside the quotation marks
 sqrt() - returns the square root of a number
 pow() - returns the power of a number
 These library functions are defined inside the framework. And, to use them we must include the framework inside our program.

 For example, sqrt() and pow() are defined inside the Foundation framework.
 */
print("Square root of the number is",sqrt(49))
print("Power of the the number is",pow(4, 2))
/*
 Benefits of Using Functions:
 1. Code Reusable - We can use the same function multiple times in our program which makes our code reusable.
 2. Code Readability - Functions help us break our code into chunks to make our program readable and easy to understand.
 */

/*
 Function Parameter with Default Values:
 We can provide default values to function parameters.We use the = operator to provide default values.
 */
func subtractNumber(num1: Int = 12, num2: Int = 4) -> Int {
    return num1 - num2
}
print("Subtraction with provided first value:",subtractNumber(num1: 20))
print("Subtraction with default values:",subtractNumber())
print("Subtraction with provide two values:",subtractNumber(num1: 13, num2: 5))
/*
 Here, we have provided default values 12 and 4 for parameters num1 and num2 respectively. Here's how this program works

 1. subtractNumber(num1: 13, num2: 5)
 Both values are passed during the function call. Hence, these values are used instead of the default values.

 2. subtractNumber(num1: 20)
 Only one the value for parameter num1 is passed during the function call. So, the default value is used for parameter num2.

 3. subtractNumber()
 No value is passed during the function call. Hence, default value is used for both parameters num1 and num2.
 
 Function With Argument Label:
 We can use the argument labels to define a function in an expressive and sentence-like manner.
 */
func multiply(of a: Int = 10, and b: Int = 4) -> Int{
    return a * b
}
print("Function of multiply with argument labels :",multiply(of: 20, and: 2))
/*
 Here, the multiply() function has argument labels: of and and. While calling a function, we can use the argument label instead of parameter names.
 
 Omit Argument Labels:
 We can also omit the argument label by writing a _ before the parameter name.
 */
func division(_ a: Int, _ b: Int)-> Int {
    return a/b
}
print("Function of division with omit argument label:",division(45, 5))
/*
 Note: If we use _ before the parameter name, then we can call the function without an argument label or parameter name.
 
 Function with variadic parameters:
 Sometimes, we do not know in advance the number of arguments that will be passed into a function. To handle this kind of situation, we can use variadic parameters in Swift.
 Variadic parameters allow us to pass a varying number of values during a function call.
 We use the ... character after the parameter's type to denote the variadic parameters.
 */
func sum(numbers: Int...) ->Int {
    var sumResult = 0
    for num in numbers {
        sumResult = sumResult + num
    }
    return sumResult
}
print("Function of variadic parameters of sum:",sum(numbers: 1,2,3,4))
/*
 Note: After getting multiple values, numbers behave as an array so we are able to use the for loop to access each value.
 Function With inout Parameters:
 When we define a function parameter, the function parameter cannot be modified inside the function body.
 func changeName(name: String) {
   if name == ""{
     // Cause Error
     name = "Ross"
   }
 }
 Here, the above code will generate an error: Error: cannot assign to value: 'name' is a 'let' constant. This is because the parameter behaves as a constant value.

 To overcome this, we need to define the parameter as an inout parameter.
 */
func changeName(name: inout String) {
    if name == "Rose" {
        name = "Josh"
    }
}
var userName = "Rose"
print("Before: \(userName)")
changeName(name: &userName)
print("After:",userName)
/*
 In the above example, we have declared a function changeName() that accepts inout parameter name.

 While calling a function with inout parameter, we must use the ampersand(&) sign before a variable name passed as an argument.
 changeName(name: &userName)
 Behind the scenes, an in-out parameter has a value that is passed into the function, is modified by the function, and is passed back out of the function to replace the original value. Therefore the value passed in the function call must be a variable.
 
 Function with Return Multiple Values:
 A function can also return multiple values.
 func checkMarks() -> (String, Int) {
   ...
   return (message, marks)
 }
 Here, the return statement returns two values: message and marks.
 Also, -> (String, Int) specifies the return type message and marks. And, the order should be the same. That is, the first returned value should be a string and second should be an integer.
 */
func compute(_ num: Int) -> (Int, Int, Int) {
    let square = num * num
    let cube = square * num
    return (num, square, cube)
}
let computeResult = compute(10)
print("Compute number:",computeResult.0)
print("Compute square:",computeResult.1)
print("Compute cube:",computeResult.2)
/*
 Here, the function is returning the number, its square and the cube value at once.The returned values are stored in result. Here, result is a tuple that stores multiple values.
To access individual values from a tuple, we use the index number. That's why result.0 returns 10, result.1 returns 100, and results.2 returns 1000.
 
 Swift Nested Functions:
 In Swift, a function can exist inside the body of another function. This is called a nested function.
 Syntax of Nested Function:
 // outer function
 func function1() {
   // code

   // inner function
   func function2() {
     // code
   }
 }
 Here, the function function2() is nested inside the outer function function1()
 */
func addNumbersWithNested() {
    print("Addition")
    func displayAddition (_ a: Int,_ b : Int) {
        print("a+b value is \(a+b)")
    }
    displayAddition(11, 20)
}
addNumbersWithNested()
/*
 In the above example, the function displayAddition() is nested inside the function addNumbersWithNested().
 Note: If we try to call the inner function from outside of the outer function, we'll get the error message: use of unresolved identifier.
 */
//Nested Function with Return Values
func operate(symbol: String) -> (Int, Int) -> Int {
    func add(_ a: Int,_ b:Int) -> Int {
        return a + b
    }
    
    func subtract(num1:Int, num2:Int) -> Int {
        return num1 - num2
      }
    let operation = (symbol == "+") ?  add : subtract
    return operation
}
let operationSubtract = operate(symbol: "-")
let nestedResult = operationSubtract(5,2)
print("Result of nested function with return value is:",nestedResult)
/*
 In the above example, the functions add() and subtract() are nested inside the operate() function . Notice the declaration of the outer function

 func operate(symbol: String) -> (Int, Int) -> Int {
   ...
 }
 Here, the return type (Int, Int) -> Int specifies that the outer function returns a function with

 -> two parameters of Int type and
 -> a return value of Int type.
 Since this matches the function definition of inner functions, the outer function returns one of the inner functions.

 This is why we are able to call the inner function from outside of the outer function as well using

 let result = operation(5, 3)
 Here, operation(5, 3) is replaced by either add(5, 3) or subtract(5, 3) based on the value of symbol passed to the operate() function.
 */
/*
 Swift Recursion:
 A function that calls itself is known as a recursive function. And, this technique is known as recursion.
 func recurse() {
   ... ...
   recurse()
   ...  ...
 }

 recurse()
 Here, the recurse() function is calling itself over and over again.
 Stopping Condition for Recursion:
 If we don't mention any condition to break the recursive call, the function will keep calling itself infinitely.
 We use the if...else statement (or similar approach) to break the recursion.

 Normally, a recursive function has two branches:

 One for recursive calls.
 Another for breaking the call under certain conditions.
 */
func countDown(num: Int){
    print(num)
    if(num == 0){
        print("Count down stop")
    } else {
        countDown(num: num - 1)
    }
}
print("Count down start")
countDown(num: 3)
//Find factorial of a number
func factorial(num: Int) -> Int {
    if(num == 0){
        return 1
    } else {
        return num * factorial(num: num - 1)
    }
}
print("Factorial of 5 is",factorial(num: 5))
/*
 Advantages and Disadvantages of Function Recursion:
 Below are the advantages and disadvantages of using recursion in Swift programming.
 1. Advantages
 It makes our code shorter and cleaner.
 Recursion is required in problems concerning data structures and advanced algorithms, such as Graph and Tree Traversal.
 2. Disadvantages
 It takes a lot of stack space compared to an iterative program.
 It uses more processor time.
 It can be more difficult to debug compared to an equivalent iterative program.
 */
/*
 Swift Ranges:
 A range is a series of values between two numeric intervals.
 var numbers = 1...4
 Here,
 --> ... is a range operator
 --> 1...4 contains values 1, 2, 3, 4
 --> 1 is lower bound (first element)
 --> 4 is upper bound (last element)
 Types of Range in Swift:
 1) Closed Range:
 A closed range includes all the values in the interval from the lower bound to the upper bound.
 It is declared using the ... (3 dots) operator.
 */
for number in 1...4 {
    print(number)
}
/*
 In the above example, we have created a closed range 1...4.
 Since it is a closed range, it contains all the numbers between 1 to 4 including the lower bound (1) and upper bound (4).
 Here, we have used the Swift for loop to access all the values in the range.
 
 2) Half-Open Range:
 A half-open range includes all the values from the lower bound to the upper bound. However, it excludes the upper bound (last number).

 It is declared using the ..< operator.
 */
for num in 1..<3 {
    print(num)
}/*
  3) One-sided Range:
  We can create a one-sided range using either of the ... or the ..< operator.
  A one-sided range contains elements up to infinite in one direction.
  let range1 = ..<2
  Here, ...<2 is a one-sided range. It contains all elements from 2 to -∞. Similarly, the range
  let range2 = 2...
  contains all elements from 2 to +∞.

  We can verify this by checking if a certain number is present in the range.
  */
let upperBoundRange = ..<2
print("Check the -8 in the upper bound range",upperBoundRange.contains(-8))
let lowerBoundRange = 3...
print("Check the 2 in the lower bound range",lowerBoundRange.contains(2))
/*
 Here, we have used contains() method to check if a certain number is present in the range.
 Note: With a one-sided range, we only set either upper bound or lower bound. Access Array Elements Using Swift Range
 */
