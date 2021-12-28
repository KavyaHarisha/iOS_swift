//Write swift comments for single line with double slash symbol

//If you want print any data on console- print
print("Hi to all")

//swift variables
var userName = "John"
//declare variables
var siteName: String // string type
var id: Int  // int type
//assign values to variables
siteName = "google.com"
print(siteName)
// declare variables and assign the value to variables at a time
var carName = "WWW"
print(carName)
//change the value of the variable
carName = "Honda"
print(carName)

//rules for naming swift variables
//--> start with either a letter, an underscore _
var withVar: String
var _withUnderScoreVar: String
//-->Variable names cannot start with numbers and dollar sign $
//-->Swift is case-sensitive. So A and a are different variables
var name = "Apple"
var Name = "banana"
print(name)
print(Name)

//Note:
//-->It's a good practice to give a descriptive variable name.
//-->In Swift, variable names are generally written in camelCase if they have multiple words.

//swift constants -- value cannot be changed
//--> we use the let keyword to declare constants
let countryName = "India"
print(countryName)
//countryName = "" //error not able re assign value to let variable
//-->you cannot declare a constant without initializing it.
let shopName: String
//print(shopName) //error with out initialize the let value

//swift literals
//-->Integer, Floating, Boolean, String and Character
var marks = 100
var piValue = 13.4
var pass = true
var word = "learn"
var char = "a"
print(marks,piValue,pass,word,char)

//swift Data type
//--> Character data type
var letter: Character = "d"
print(letter)
//---->If you try to assign more than one character like "abc" to variables of Character type, you'll get an error message.

//-->String data type
var language: String = "iOS"
print(language)

//--> Integer data type
var number: Int = 10
print(number)

//-->Boolean data type
var passed: Bool = true
print(passed)

//-->Float data type
var volume = 20.7
print(volume)
//---->Float to store the number with less precision (up to 6 decimal places)

//-->Double data type
var lattitude = 23.784893991223126
print(lattitude)
//---->Double to store the number with more precision (up to 15 decimal places)
