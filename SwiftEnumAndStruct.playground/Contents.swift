/*
 Swift enum:
 In Swift, an enum (short for enumeration) is a user-defined data type that has a fixed set of related values.

 We use the enum keyword to create an enum. For example,

 enum Season {
   case spring, summer, autumn, winter
 }
 Note: Enum values are also called enum cases. And, we use the case keyword to declare values inside the enum.
 
 Create enum variables:
 Since enum is a data-type, we can create variables of enum type.For example,
 var currentSeason: Season
 
 Assign values to enum variables:
 We use the enum name and the . notation to assign values to an enum variable. For example,
 var currentSeason = Season.summer
 */
enum Season: CaseIterable {
    case Spring, Summer, Autumn, Winter
}
let currentSeason: Season = Season.Autumn
print("Current season value",currentSeason)
/*
 Swift enum With Switch Statement:
 We can also use an enum with a switch statement in Swift.
 */
switch(currentSeason) {
case.Autumn:
    print("Current season is Autumn")
case.Spring:
    print("Current season is Spring")
case.Summer:
    print("Current season is Summer")
case.Winter:
    print("Current season is Winter")
}
/*
 Iterate Over enum Cases:
 In Swift, we use the CaseIterable protocol to iterate over an enum.
 enum Season: caseIterable {
 }
 Now we can use the allCases property to loop through each case of an enum.
 for currentSeason in Season.allCases {
 }
 */
for currentSeason in Season.allCases {
    print(currentSeason)
}
/*
 Swift enums with rawValue:
 In Swift, we can also assign values to each enum case.To access the raw value of an enum, we use the rawValue property.
 */
enum Size: Int {
    case Small = 6
    case Medium = 10
    case Large = 15
}
print("Size raw value",Size.Large.rawValue)
/*
 Note: Raw values can be of strings, characters, integers, or floating-point number types.
 Swift enum Associated Values:
 In Swift, we can also attach additional information to an enum case.
 */
enum Laptop {
    case name(String)
    case price(Int)
}
print("Laptop name is \(Laptop.name("Mac")) and it's price is  \(Laptop.price(20000))")
/*
 Associate Multiple Values:
 We can also associate multiple values to a single enum value.
 */
enum Marks {
    case gpa(Double, Double, Double,Int)
    case grade(String, String, String)
}
print("The available gpa are \(Marks.gpa(3.6, 2.4, 4.0, 0)) and available grades are \(Marks.grade("A", "B", "C"))")
/*
 Named Associated Values:
 We can also provide a name to the associated value to make our code more readable. For example,

 enum Pizza {
   case small(inches: Int)
 }
 enum Associated Values and Switch Statement:
 We can use a Swift switch Statement to match enum associated values.
 */
enum Mercedes {
    case Sedan(height:Double)
    case SUV(height: Double)
    case Roadster(height: Double)
}
let choice = Mercedes.SUV(height: 3.4)
switch(choice){
case let .SUV(height):
    print("SUV height",height)
case let .Roadster(height):
    print("Roadster height",height)
case let .Sedan(height):
    print("Sedan height",height)
}
/*
 Here, let binds the associated value to the height variable, which we can use in the body of the case.
 Since the value matches with case let .SUV, the statement inside the case is executed.
 Raw Values VS Associated Values:
 Raw values are predefined constant values provided to each enum value.
 enum Vehicle: String {
   case car = "Four Wheeler"
   case bike = "Two Wheeler"
 }
 However, associated values are more like variables associated with the enum values. For example,
 enum Marks {
   case grade(String)
   case gpa(Double)
 }
 Notes:
 -> An enum cannot have both raw values and associated values at the same time.
 -> The raw values of an enum must be of the same data type. But associated values can be of any type.
 */
/*
 Swift Structs:
 A struct is used to store variables of different data types. For example,
 Suppose we want to store the name and age of a person. We can create two variables: name and age and store value.
 However, suppose we want to store the same information of multiple people.
 Here's the syntax to define struct in Swift:
 struct StructureName {
   // structure definition
 }
 */
struct Person {
    var name = ""
    var age = 0
    
    func displayDetails(){
        print("The person details are \(name), \(age)")
    }
}

var person = Person()
person.name = "Singh"
person.age = 33
print("Person name \(person.name) and age is \(person.age)")
/*
 Note: We can create as many instances of the structure as we want.
 Swift Memberwise Initializer:
 Here, values inside the parenthesis () are automatically assigned to corresponding properties of the struct. This is called a memberwise initializer.
 Note: We can also use a memberwise initializer even if we have assigned a default value to a struct property.
 */
let person1 = Person(name: "Jhon", age: 66)
print("Person details with help of Memberwise Initializer -")
person1.displayDetails()
/*
 We can also define a function inside a swift struct. A function defined inside a struct is called a method.
 Here, we have used . notation to access method defined inside the struct. Finally, the statement inside the method is executed.
 Swift Singleton:
 In Swift, Singleton is a design pattern that ensures a class can have only one object. Such a class is called singleton class.
 To create a singleton class, we need to follow some rule
 1. Create a private initializer:
 An initializer allows us to instantiate an object of a class. And, making the initializer of a class restricts the object creation of the class from outside of the class.
 class FileManager {
   // create a private initializer
   private init() {
   }
 }
 // Error Code
 let obj = FileManager()
 Here, the initializer of the FileManager class is private. So, when we try to create an object of FileManager outside of the class, we get an error.
 2. Create static type Singleton Object:
 In Singleton class, we create a single static type object of the class. Making the object static allows us to access the object using the class name.
 */
class FileManager {
    static let fileObj = FileManager()
    private init() {
        
    }
    func simpleMethod(){
        print("Singleton class method")
    }
}
FileManager.fileObj.simpleMethod()
/*
 In the above example, we have created a singleton class FileManager. Since it is a singleton class, we have made the initializer private and created a static object named fileObj.
 */
