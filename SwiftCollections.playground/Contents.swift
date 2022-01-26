import UIKit

/*
 Swift Arrays:
 An array is a collection of similar types of data. For example,

 Suppose we need to record the age of 5 students. Instead of creating 5 separate variables, we can simply create an array.
 */
let numberArray : [Int] = [10,2,12,423]
print("The numberArray elements are \(numberArray) ")
//Create an Empty Array
var emptyArray = [String]()
print("empty array data \(emptyArray)")
/*
 Note:
 It is important to note that, while creating an empty array, we must specify the data type inside the square bracket [] followed by an initializer syntax (). Here, [String]() specifies that the empty array can only store string data elements.
 
 Access Array Elements:
 In Swift, each element in an array is associated with a number. The number is known as an array index.

 We can access elements of an array using the index number (0, 1, 2 …).
 */
var languageArray = ["Swift", "Java", "Python", "C++"]
print("The language at 2 index is \(languageArray[2])")
/*
 Add Elements to an Array:
 Swift Array provides different methods to add elements to an array.
 1)Using append()
 The append() method adds an element at the end of the array.
 */
languageArray.append("C")
print("Language array after append the element at the end \(languageArray)")
//We can also use the append() method to add all elements of one array to another.
var otherLanguages = ["Java Script", "Hadoop", "Android"]
languageArray.append(contentsOf: otherLanguages)
print("Language array elements are after append the other language is \(languageArray)")
/*
 Note: We must use contentOf with append() if we want to add all elements from one array to another.
 2) Using insert():
 The insert() method is used to add elements at the specified position of an array.
 */
emptyArray.insert("33", at: 0)
print("Empty array elements after insert the element is \(emptyArray)")
/*
 Modify the Elements of an Array:
 We can use the array index to modify the array element.
 */
otherLanguages[1] = "BigData"
print("otherLanguages array elements after modify the element at index 1 is \(otherLanguages)")
/*
 Remove an Element from an Array:
 We can use the remove() method to remove the last element from an array.
 */
languageArray.remove(at: 2)
print("languageArray elements are after remove the element at index of 2 is \(languageArray)")
/*
 Similarly, Array have other methods, below some of those methods are:
 Method                 Description
 removeFirst()          to remove the first element
 removeLast()           to remove the last element
 removeAll()            to remove all elements of an array
 sort()                 sorts array elements
 shuffle()              changes the order of array elements
 forEach()              calls a function for each element
 contains()             searches for the element in an array
 swapAt()               exchanges the position of array                           elements
 reverse()              reverses the order of array elements
 
 Looping Through Array:
 We can use the for loop to iterate over the elements of an array.
 */
for lang in otherLanguages {
    print(lang,terminator: "\t")
}
/*
 Find Number of Array Elements
 We can use the count property to find the number of elements present in an array.
 */
print("The languageArray elements count is \(languageArray.count)")
/*
 Check if an Array is Empty:
 The isEmpty property is used to check if an array is empty or not.
 Here, isEmpty returns:
 true - if the array is empty
 false - if the array is not empty
 */
print("The empty array is empty?: \(emptyArray.isEmpty)")
/*
 Array With Mixed Data Types:
 Till now, we have been using arrays that hold elements of a single data type.

 However, in Swift, we can also create arrays that can hold elements of multiple data types.
 */
var mixedDataArrayOfStudentInfo :[Any] = ["Jhon",29, 30.00]
print(mixedDataArrayOfStudentInfo)
//Here, [Any] specifies that address can hold elements of any data type. In this case, it stores both String, Integer and Float data.
