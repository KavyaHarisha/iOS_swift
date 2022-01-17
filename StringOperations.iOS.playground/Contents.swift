//compare two strings
var firstString = "hi to all"
var secondString = "hope every one good"
var thridStringAsFirst = "hi to all"
//compare firstString and secondString
print(firstString == secondString)
//compare thridStringAsFirst and firstString
print(thridStringAsFirst == firstString)

//join two strings
var gather = "Come and join"
var purpose = " to learn about iOS development basics"
gather.append(purpose)
print(gather)
//-->concatenate Using + and +=
var greet = "hi to " //We cannot create greet using let. It is because the += operator joins two strings and assigns the new value to greet
let sentence = "all"
var result = greet + sentence
print(result)
greet += sentence
print(greet)

//find lenght of the string
print(greet.count)
//---->The count property counts the total number of characters in a string including whitespaces.

//other string functions
print(result.isEmpty) //determines if a string is empty or not
print(firstString.uppercased()) // converts string to uppercase

//Escape Sequences
var example = "This is \"String\" class" //Suppose we need to include double quotes inside a string.So we use the escape character \ in Swift
print(example)
var availableFruits = "apple\\banana"
print(availableFruits)
var tabText = "Hi to\tall"
print(tabText)
var newLineText = "Good evening to all\nJoin in iOS learning"
print(newLineText)

//String Interpolation
//-->use the backslash character \ to use variables and constants inside a string
var languageName = "iOS"
print("This is \(languageName) programing..")

//Swift Multiline String
//-->use triple double quotes """ - create a multiline string in Swift
var learnSwift = """
By using Swift we develop iOS applications.
Design our own application with help of iOS development
"""
print(learnSwift)
//Note - Multi-line strings must always begin on a new line. Otherwise, it will generate an error.
//example -
//var str = """Swift
//I love Swift
//"""

//Swift Output
//-->use the print() function to print output
//Information about Output
"""
However, the actual syntax of the print function accepts 3 parameters
print(items: separator: terminator:)
Here,
items - values inside the double quotation
separator (optional) - allows us to separate multiple items inside print().
terminator (optional) - allows us to add add specific values like new line "\n", tab "\t"

separator and terminator are optional. If we don't include them inside the print(), their default values: single space " " for separator and new line "\n" for terminator are used.
"""
// print with terminator space
print("Good Morning!", terminator: " ")
print("It's rainy today")
//print() with separator
print("New Year", 2022, "See you soon!", separator: ". ")
//Print Concatenated Strings
print("Entire world is " + "awesome.")

//Swift Input
//-->use the readLine() function to take input from users.
//print("Enter your favorite programming language:")
//let name:String? = readLine()

//print("Your favorite programming language is \(name!).")
/*
 Multiline Comment
 In Swift, any text between /* and */ is a multiline comment.
 Always use comments to explain why we did something rather than how we did something. Comments shouldn't be the substitute for the way to explain poorly written code.
 */
/*
 Swift optionals
 variable or constant declared of those types contains a default values.
 */
let defaultVlaue = Int()
print("The default value of Int is \(defaultVlaue)")
/*
 In Swift another data type available that is an Optional, whose default value is null value(nil)
 */
//Declaration of Optional
var defaultValueOfInt: Int?
var defaultValueOfInt1: Int!
print(defaultValueOfInt)
print("An optional defautl value of int is \(defaultValueOfInt1)")
//We can create optional by using ? and !.
//Assigning and accessing a value from an optinal
let defaultValueOfInt2: Int? = 5
print("An optional value of defaultValueOfInt2 \(defaultValueOfInt2)")
//The above give the output like Optional<value> ex: Optional(5)
print("An optional value of defaultValueOfInt2 with ! \(defaultValueOfInt2!)")
//In order the access the <Value> from Optional, we need a mechanism called unwrapping. We can unwrap an optinal by appending ! character at the end of the variable/constant. ex: 5
//Note: The unwrapping mechanism should only be used when you are certain that the optional will sure have a value when you access it.
//Explicitly declaring an unwrapped optional
let defalueValueOfIntWithUnwrap : Int! = 10
print("An optional value of unwrap type mechanism is \(defalueValueOfIntWithUnwrap!)")
//Note: Remeber always need to have a value when you accesss it. If you don't you will get a fatal error crash.
/*
 Ex: var someValue : Int!
 var unWrappedValue: Int = someValue // crashes due to this line
 */

