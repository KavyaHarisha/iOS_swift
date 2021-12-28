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
