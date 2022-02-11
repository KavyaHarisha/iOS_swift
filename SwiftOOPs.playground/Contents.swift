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
/*
 Swift Methods:
 A Swift function defined inside a class is called method.
 class Person {
   // define methods
   func greet() {
   // method body
   }
 }
 Swift static Methods:
 We have used objects of the class to access its methods. However, we can also create methods that can be accessed without creating objects.

 These types of methods are called static methods. In Swift, we use the static keyword to create a static method. For example,

 class Calculator {

   // static method
   static func add() {
   ...
   }
 }
 Here, add() is the static method.

 To access a static method, we use the class name. For example,

 // access static method
 Calculator.add()
 */
class Calculator1 {
    //non-static method
    func multiply(num:Int, num1:Int) -> Int{
        return num * num1
    }
    //static method
    static func add(num:Int,num2:Int) -> Int {
        return num+num2
    }
}
let calObj = Calculator1()
let staticAddResult = Calculator1.add(num: 20, num2: 33)
print("Static method add result",staticAddResult)
print("Non static method multiply result",calObj.multiply(num: 10, num1: 2))
/*
 Swift self property in Methods:
 Sometimes the name of a property and the name of a method parameter might be the same. For example,

 var physics = 0
 func checkEligibility(physics: Int) {
 }
 Here, both the property and the method parameter have the same name physics.

 In such cases there might be ambiguity between the names. So to distinguish between them, we use the self property. The self property refers to the current object of the method.
 */
class Marks {
    var physics = 0
    func checkEligibility(physics: Int){
        if(self.physics < physics){
            print("Not eligible for admission")
        } else {
            print("Eligible for admission")
        }
    }
}
let stu = Marks()
stu.physics = 33
stu.checkEligibility(physics: 20)
/*
 Swift Initializer:
 An initializer is a special type of function that is used to create an object of a class.
 In Swift, we use the init() method to create an initializer. For example,

 class Wall {
   // create an initializer
   init() {
     // perform initialization
     ...
   }
 }
 */
class Wall {
    var length: Double
    var height: Double
    init() {
        length = 2.5
        height = 3.5
        print("Wall length and height:",length, height)
    }
    
    init(length: Double, height: Double){
        self.length = length
        self.height = height
    }
    func calcuatorArea() -> Double {
        return length * height
    }
}
Wall()
/*
 Here, when the wall1 object is created, the init() initializer is called. And, the value of the length and height properties are initialized to 2.5, 3.5.
 Parameterized Initializer:
 A Swift initializer can also accept one or more parameters. Such initializers are known as parameterized initializers (initializers with parameters).
 */
print("Area of the wall is",Wall(length: 3.0, height: 4.0).calcuatorArea())
/*
 Initializer Overloading:
 Swift Initializers can be overloaded in a similar way as function overloading.

 In initializer overloading, two or more initializers can have the same name if they have different types or numbers of parameters.

 And, based on the arguments passed during the object creation, the corresponding initializer is called.
 */
class Person {
    var age: Int
    //initializer with no arguments
    init() {
        age = 10
    }
    //initialializer with an argument
    init(age: Int) {
        self.age = age
    }
    func getAge() -> Int {
        return age
    }
}
let person1 = Person()
let person2 = Person(age: 30)
print("Person age with out parameter initializer",person1.getAge())
print("Person age with parameter initializer",person2.getAge())
/*
 Swift convenience Initializer:
 In previous examples, the initializer we defined were primary initializers of the class. These primary initializers are also called designated initializers.
 However, we can also define a secondary/supporting initializer for a class called convenience initializer.

 To define a convenience initializer, we use the convenience keyword before the initializer.
 */
class University1 {
    var name: String
    var rank: String
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    //convenience init
    convenience init() {
        self.init(name: "JUNTU",rank: "3")
    }
}
let uni1 = University1()
print("University name", uni1.name)
print("University rank",uni1.rank)
/*
 In the above example, we have created a designated initializer: init() and a convenience initializer: convenience init().

 Inside the convenience initializer, we have called the designated initializer and assigned values to the properties.

 convenience init() {
   self.init(name: "Kathmandu University", rank: "1st")
 }
 When the university1 object is created, the convenience initializer is called.

 // using convenience initializer
 var university1 = University()
 This makes our code look cleaner compared to calling the designated initializer:

 // call designated initializer
 var university1 = University(name: "Kathmandu University", rank: "1st")
 Note: Convenience Initializers are useful when it comes to assigning default values to stored properties.
 
 Failable Initializer:
 In some cases initializers might or might not work, this is called a failable initializer.

 We write a failable initializer by placing a question mark (?) after the init keyword and return nil if something goes wrong.
 */
class File {
    var folder : String
    init?(folder: String){
        if folder.isEmpty {
            print("Folder not found")
            return nil
        }
        self.folder = folder
    }
}
let file = File(folder: "")
if(file != nil){
    print("File found successfully")
} else {
    print("Error finding file")
}
/*
 In the above example, we have created the failable initializer init?() with a parameter named folder.

 And, we have used the if statement and the isEmpty property

 if (folder.isEmpty) { return nil }
 to check if the folder is empty and returns nil if it is empty.

 For the folder1 object, we have passed an empty string "" which triggers an initialization failure, so the statement inside it is executed first and then it returns nil.

 And finally, the statement inside the else block is executed
 */
