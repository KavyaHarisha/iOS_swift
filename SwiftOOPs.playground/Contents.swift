import UIKit

/*
 Swift Classes and Objects:
 Swift Classes:
 A class is considered as a blueprint of objects.
 Define Swift Class:
 We use the class keyword to create a class in Swift.
 class ClassName {
   // class definition
 }
 Here, we have created a class named ClassName.
 */
class Bike {
    var name = ""
    var gear = 0
}
/*
 Here,
 Bike - the name of the class
 name/gear - variables inside the class with default values "" and 0 respectively.
 Note: The variables and constants inside a class are called properties.
 
 Swift Objects:
 An object is called an instance of a class.
 */
let biycleBike = Bike()
/*
 Access Class Property using Objects:
 We use the . notation to access the properties of a class.
 */
biycleBike.name = "Biycle"
biycleBike.gear = 22
print("Bike properties are",biycleBike.name,biycleBike.gear)
//We can also create multiple objects from a single class.
let raceBike = Bike()
raceBike.name = "Race bike"
raceBike.gear = 2
print("Multiple objects of the bike are",biycleBike.name, raceBike.name)
//We can also define a function inside a Swift class.
class Room {
    var length = 0.0
    var breadth = 0.0
    
    func calculateArea() {
        print("Area of the room is", length * breadth)
    }
}
let kitchenRoom = Room()
kitchenRoom.length = 20
kitchenRoom.breadth = 10.5
kitchenRoom.calculateArea()
/*
 Swift Initializer:
 We can also initialize values using the initializer.
 */
class PlayGround {
    var name: String
    
    init(name: String){
        self.name = name
    }
}
let footBallPlayground = PlayGround(name: "Foot ball play ground")
print("Play ground name is",footBallPlayground.name)
/*
 Here, init() is the initializer that is used to assign the value of the name variable. We have used the self.name to refer to the name property of the footBallPlayground object.

 If we use an initializer to initialize values inside a class, we need to pass the corresponding value during the object creation of the class.
 
 Swift Properties:
 A Swift variable or constant defined inside a class or struct are called properties.
 class Person {

   // define properties
   var name: String = ""
   var age: Int = 0
 }
 Here, inside the Person class we have defined two properties:
 name - of String type with default value ""
 age - of Int type with default value 0
 Note: These properties we defined above are also called stored properties as they store actual values for each instance of the Person class.
 Swift Computed Property:
 Earlier, we discussed about stored properties that store value for each instance. For example,
 class Calculator {
   // define stored property
   var num1: Int = 0
 }
 Here, num1 is a stored property, which stores some value for an instance of Calculator.
 However, there is another type of property called computed properties. Unlike stored property, a computed property calculates the value. For example,

 class Calculator {
   // define computed property
   var sum: Int {
     num1 + num2
   }
 }
 Here, sum is a computed property that doesn't store a value, rather it computes the addition of two values.

 Note: The curly braces {..} indicates the body of the computed property.
 */
class Calculator {
    var num1 = 0
    var num2 = 0
    var sum: Int {
        num1 + num2
    }
}
let calculatorObj = Calculator()
calculatorObj.num1 = 10
calculatorObj.num2 = 22
print("Sum of calculator obj is",calculatorObj.sum)
/*
 Getters And Setters for Computed Properties:
 In Swift, we can also include a getter and setter inside a computed property.

 getter - returns the computed value
 setter - changes the value
 */
class Student {
    var sub1 = 0
    var sub2 = 0
    
    var totalMarks: Int {
        get {
            sub1 + sub2
        }
        set(modifyMark) {
            sub1 = modifyMark + 10
            sub2 = modifyMark + 20
        }
    }
}
let student1 = Student()
student1.sub1 = 20
student1.sub2 = 44
print("Get value of total marks",student1.totalMarks)
student1.totalMarks = 10
print("New value of sub1 and sub2 are",student1.sub1, student1.sub2)
/*
 Swift Static Properties:
 In the previous example, we have used objects of the class to access its properties. However, we can also create properties that can be accessed and modified without creating objects.

 These types of properties are called static properties. In Swift, we use the static keyword to create a static property.
 class University {

   // static property
   static var name: String = ""
 }
 Here, name is the static property. Now to access and modify the value of a static property, we use the class name.

 // modify value of the static property
 University.name = "Kathmandu University"
 */
class University {
    //static property
    static var name: String = ""
    //non-static property
    var founded: Int = 0
}
let university1 = University()
// assign value to static property
University.name = "JNTU"
// assign value to non-static property
university1.founded = 1990
print("University details are",university1.founded,University.name)
/*
 In the above example, we have a static property: name and a non-static property - founded Here,

 University.name - access the static property using class name
 obj.founded - access the non-static property using the object of the class
 A static property is of the class type (associated with class rather than object), so we are able to access them using class names.
 */
