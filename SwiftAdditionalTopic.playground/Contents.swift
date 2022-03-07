import UIKit

/*
 Swift Error Handling:
 An error (exception) is an unexpected event that occurs during program execution.
 Steps For Error Handling in Swift:
 1) Create an enum that represents the types of errors.
 2) Create a throwing function using the throws keyword.
 3) Call the function using the try keyword.
 4) Wrap the code with try in the do {...} block and add the catch {...} block to handle all errors.
 1. Create enum of Errors:
 In Swift, we need to create an enum that represents the type of errors we may encounter while writing the program.
 The enum we create must conform to the Error protocol so that we can throw an error value inside the function.
 Let's see an example,
 enum DivisionError: Error {
   case dividedByZero
 }
 2. Create a Throwing Function:
 In order to throw errors, we need to create a throwing function using the throws keyword.
 Then we use the throw statement inside the function to throw a particular error represented by the enum. For example,
 // create throwing function using throws keyword
 func division(numerator: Int, denominator: Int) throws {
 // throw error if divide by 0
   if denominator == 0 {
     throw DivisionError.dividedByZero
   }
 }
 Note: The throw keyword has the same effect as the return keyword. return returns some value from the function, whereas throw returns error value from the function.
 3. Function Call Using try Keyword:
 In Swift, we use the try keyword while calling the throwing function. It indicates that a function can throw an error. For example,
 // call throwing function using try keyword
 try division(numerator: 10, denominator: 0)
 However, the error handling process is still incomplete. If we run the program now, we'll get an error message: An error was thrown and was not caught

 So, in order to catch the thrown error, we use the do-catch statement.
 4. Handling Errors Using do-catch Statement:
 In Swift, we wrap the try code in the do block and add the catch block to handle all errors. For example,
 do {
   try division(numerator: 10, denominator: 0)
   ...
 }
 catch DivisionError.dividedByZero {
   // statement
 }
 */
enum DivisionError: Error {
    case dividedByZero
}

func division(numerator: Int, denominator: Int) throws{
    if denominator == 0 {
        throw DivisionError.dividedByZero
    } else {
        print(numerator/denominator)
    }
}
do {
    try division(numerator: 12, denominator: 0)
    print("Valid division")
}
catch DivisionError.dividedByZero {
    print("Error: Denominator cannot be 0")
}
/*
 Disable Error Handling:
 In Swift, sometimes we can be confident that the throwing function won't throw an error at runtime.
 In that case, we can write try! during the function call to disable the error handling.
 */
try! division(numerator: 40, denominator: 10)
/*
 Also notice that when we use try!, we don't need to use the do-catch statement.
 Note: If we use try! and there is an error, our app will simply crash.
 */
/*
 Swift Generics:
 Swift Generics allows us to create a single function and class (or any other types) that can be used with different data types. This helps us to reuse our code.
 
 Swift Generic Function:
 In Swift, we can create a function that can be used with any type of data. Such a function is known as a Generic Function.
 Here's how we can create a generic function in Swift:
 // create a generic function
 func displayData<T>(data: T){
   ...
 }
 Here,
 We have created a generic function named displayData().
 T used inside the angle bracket <> is called the type parameter.
 And based on the type of the value passed to the function, the T is replaced by that data type (Int, String, and so on).
 Note: We can provide any name to the type parameter: <S>, <Element>, etc. But generally, we use T.
 */
func displayGenricTypeData<T>(data: T){
    print("Generic function:")
    print("Data passed:",data)
}
displayGenricTypeData(data: 10)
/*
 Swift Generic Class:
 Similar to the generic function, we can also create a class that can be used with any type of data. Such a class is known as Generic Class.
 */
class GenricClassIformation<T> {
    var data: T
    init(data: T){
        self.data = data
    }
    func getGenricData() -> T {
        return self.data
    }
}
let strObj =  GenricClassIformation<String>(data: "Hi to all")
print("Genric class returns:",strObj.getGenricData())
/*
 Type Constraints in Swift Generics:
 In general, the type parameter can accept any data type (Int, String, Double, ...).
 However, if we want to use generics for some specific types (such as accepting data of number types) only, then we can use type constraints.
 Here's how we create type constraints:
 func addition<T: Numeric>(num1: T, num2: T) {
   ...
 }
 Here, <T: Numeric> adds constraints to the type parameter. It defines that T needs to conform to the Numeric protocol.
 Note: Numeric is the built-in protocol for numeric values like Int and Double.
 */
func addition<T: Numeric>(num: T, num1: T){
    print("Sum is", num+num1)
}
addition(num: 4, num1: 1.5)
/*
 Note: If we try to pass other types, say String, we'll get an error: argument type 'String' does not conform to the expected type 'Numeric'.
 */
