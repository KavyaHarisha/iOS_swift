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

/*
 Swift sets:
 A set is a collection of unique data. That is, elements of a set cannot be duplicate.
 */
var stundentIds : Set = [100,20,17,20,44,44]
print("Student id's are \(stundentIds)")
/*
 Note: When you run this code, you might get output in a different order. This is because the set has no particular order.
 
 Add Elements to a Set:
 We use the insert() method to add the specified element to a set.
 */
stundentIds.insert(33)
print("Student id's after added one new element is \(stundentIds)")
/*
 Remove an Element from a Set:
 We use the remove() method to remove the specified element from a set.
 */
stundentIds.remove(44)
print("Student is's after remove the one element is \(stundentIds)")
/*
 Other Set Methods
 Method                     Description
 sorted()                   sorts set elements
 forEach()                  performs the specified actions on                         each element
 contains()                 searches the specified element in                         a set
 randomElement()            returns a random element from the                         set
 firstIndex()               returns the index of the given                            element
 removeFirst()              to remove the first element of a                          set
 removeAll()                to remove all elements of a set
 
 Iterate Over a Set:
 We can use the for loop to iterate over the elements of a set.
 */

for id in stundentIds {
    print(id,terminator: "\t")
}

/*
 Find Number of Set Elements
 We can use the count property to find the number of elements present in a Set.
 */
print("Student id's count is \(stundentIds.count)")
/*
 Swift Set Operations:
 Swift Set provides different built-in methods to perform mathematical set operations like union, intersection, subtraction, and symmetric difference.

 1. Union of Two Sets:
 The union of two sets A and B include all the elements of set A and B.
 */
let set1:Set<String> = Set(["Gova","Banana","Mango"])
let set2:Set<String> = Set(["Sithapal","Banana","Gova"])
print("Union: ",set1.union(set2))
/*
 2. Intersection between Two Sets:
 The intersection of two sets A and B include the common elements between set A and B.
 */
print("Intersections: ",set1.intersection(set2))
/*
 3. Difference between Two Sets:
 The difference between two sets A and B include elements of set A that are not present on set B.
 */
print("Substraction: ",set1.subtracting(set2))
/*
 Note: setA.substracting(setB) is equivalent to A - B set operation.

 4. Symmetric Difference between Two Sets:
 The symmetric difference between two sets A and B includes all elements of A and B without the common elements.
 */
print("Symmetric difference: ",set1.symmetricDifference(set2))
/*
 5. Check Subset of a Set:
 Set B is said to be the subset of set A if all elements of B are also present in A.
 */
print("Subset: ",set1.isSubset(of: set2))
/*
 Check if two sets are equal
 We can use the == operator to check whether two sets are equal or not.
 */
if set1 == set2 {
    print("Two sets values are equal")
} else {
    print("Two sets values are not equal")
}
/*
 Create an Empty Set:
 In Swift, we can also create an empty set.
 It is important to note that, while creating an empty set, we must specify the data type inside the <> followed by an initializer syntax ().

 Here, <Int>() specifies that the empty set can only store integer data elements.
 */
let emptySet = Set<String>()
print(emptySet)

/*
 Swift Dictionary:
 Swift dictionary is an unordered collection of items. It stores elements in key/value pairs. Here, keys are unique identifiers that are associated with each value.
 */
//Create a dictionary in Swift
var capitalCity = ["Napal": "Kathmandu","Italy":"Rome","England": "London"]
print("Cities and it's capitals are \(capitalCity)")
/*
 Note: Here, keys and values both are of String type. We can also have keys and values of different data types.
 */
var studentId = [10: "Ramesh", 20: "Joe", 30: "Kesh"]
print("Student id and it's names \(studentId)")
/*
 Add Elements to a Dictionary:
 We can add elements to a dictionary using the name of the dictionary with [].
 */
capitalCity["Japan"] = "Tokyo"
print("Update capitalCity dictionary \(capitalCity)")
/*
 Change Value of Dictionary:
 We can also use [] to change the value associated with a particular key.
 */
studentId[30] = "Jhon"
print("Updated studentId dictionary\(studentId)")
/*
 Access Elements from Dictionary:
 In Swift, we can access the keys and values of a dictionary independently.
 1. Access Keys Only:
 We use the keys property to access all the keys from the dictionary.
 */
print("The capitalCity dictionary keys are \(capitalCity.keys)")
/*
 2. Access Values Only:
 Similarly, we use the values property to access all the values from the dictionary.
 */
print("The capitalCity dictionary values are \(capitalCity.values)")
/*
 Remove an Element from a Dictionary:
 We use the removeValue() method to remove an element from the dictionary.
 */
studentId.removeValue(forKey: 20)
print("studentId dictionary after removeValue(): \(studentId)")
/*
 Other Dictionary Methods:
 Method                     Description
 removeAll()                remove all elements of a dictionary
 sorted()                   sorts dictionary elements
 shuffled()                 changes the order of dictionary elements
 contains()                 checks if the specified element is present
 randomElement()            returns a random element from the dictionary
 firstIndex()               returns the index of the specified element

 Iterate Over a Dictionary:
 We use the for loop to iterate over the elements of a dictionary.
 */
for (city,capital) in capitalCity {
    print("\(city): \(capital)")
}
/*
 Find Number of Dictionary Elements:
 We can use the count property to find the number of elements present in a dictionary.
 */
print("The studentId dictionary elements count is \(studentId.count)")
/*
 Create an Empty Dictionary:
 In Swift, we can also create an empty dictionary.
 */
var emptyDictionary = [Int: String]()
print("Empty dictionary: \(emptyDictionary)")
/*
 Note: It is compulsory to specify the data type of dictionary while creating an empty dictionary.
 */
/*
 Swift Tuple:
 In Swift, a tuple is a group of different values. And, each value inside a tuple can be of different data types.
 Create A Tuple
 In Swift, we use the parenthesis () to store elements of a tuple.
 */
var userData = ("Sam",20)
print("User details are \(userData)")
/*
 Access Tuple Elements:
 Like an array, each element of a tuple is represented by index numbers (0, 1, ...) where the first element is at index 0.

 We use the index number to access tuple elements.
 */
print("User age is \(userData.1)")
/*
 Modify Tuple Element:
 We can modify a tuple element by assigning a new value to the particular index.
 */
userData.0 = "Kiran"
print("After update the tuple user name \(userData)")
/*
 Named Tuples:
    We can also provide names for each element of the tuple.
 */
var company = (name: "XYZ company",found: 1994)
print("Access the tuple element with named tuples - \(company.found)")
/*
 We have used the . notation and the provided names to access the corresponding values of the tuple.

 Swift Nested Tuple
 We can create a tuple as an element of another tuple.
 */
let alphabets = ("a","b","c",("d","e","f"))
print("alphabets first element is \(alphabets.0)")
print("alphabets fourth element of nested element \(alphabets.3)")
/*
 Add/Remove Elements From Tuple:
 We cannot add or remove elements from a tuple.So, when we try to add and remove elements from the tuple, we get errors.
 
 Dictionary Inside a Tuple:
 We can use a dictionary to add an element to a tuple.
 */
var laptopLaunch = ("MackBook", 1888,["Nepal": "10AM", "England": "12PM"])
print("Tuple inside dictionary \(laptopLaunch)")
//As we know we can add elements to a dictionary. So, we use the code.
laptopLaunch.2["USA"] = "10:45AM"
print("After add the element to dictionary in tuple \(laptopLaunch)")
/*
 This way we are able to add an element to a tuple. And, the type of tuple is still the same (String, String, Dictionary). So, we don't get any errors.
 */
