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
