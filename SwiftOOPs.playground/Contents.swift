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
/*
 Swift Deinitialization:
 Deinitialization is a process to deallocate class instances when they're no longer needed. This frees up the memory space occupied by the system.

 We use the deinit keyword to create a deinitializer. For example,

 class Race {
   // create deinitializer
   deinit {
     // perform deinitialization
   }
 }
 Here, deinit is the deinitializer of the Race class.
 */
class Race {
    var lap: Int
    init() {
        lap = 5
        print("Race completed")
        print("Total laps are:",lap)
    }
    
    deinit {
        print("Memory deallocated")
    }
}
var raceResult: Race? = Race()
raceResult = nil
/*
 In the above example,
 1. We have created a deinitializer inside the Race class.

 deinit {
   print("Memory Deallocated")
 }
 2. Then, we have created an instance of the Race class and assigned it to a Race type variable named result.
 // create an instance
 var result: Race? = Race()
 Here, Race? indicates that result is an optional, so it can store two types of values:
 values of the Race type.
 a nil value.
 3. Finally, we assign nil to result:
 // deallocate instance
 result = nil
 This deallocates the instance. The deinitializer is called automatically right before the class instance is deallocated. And the statement inside it is executed.
 Note:
 ->In Swift, we only use deinitializers when we manually want to deallocate instances. Otherwise, Swift automatically does the deallocation.
 ->Deinitializers can only be used with classes and not with structs.
 ->Each class can only have a single deinitializer.
 
 Swift Inheritance:
 Inheritance allows us to create a new class from an existing class.
 The new class that is created is known as subclass (child or derived class) and the existing class from which the child class is derived is known as superclass (parent or base class).
 Swift Inheritance Syntax:
 In Swift, we use the colon : to inherit a class from another class. For example,
 // define a superclass
 class Animal {
   // properties and methods definition
 }
 // inheritance
 class Dog: Animal {
   // properties and methods of Animal
   // properties and methods of Dog
 }
 Here, we are inheriting the Dog subclass from the Animal superclass.
 */
class Animal {
    var name: String = ""
    func eat() {
        print("I can eat")
    }
}

class Dog: Animal {
    func display() {
        print("My name is",name)
    }
}

var labrador = Dog()
labrador.name = "Rink"
labrador.eat()
labrador.display()
/*
 In the above example, we have derived a subclass Dog from a superclass Animal. Notice the statements,
 labrador.name = "Rohu"
 labrador.eat()
 Here, we are using labrador (object of Dog) to access name and eat() of the Animal class. This is possible because the subclass inherits all properties and methods of the superclass.
 
 is-a relationship:
 In Swift, inheritance is an is-a relationship. That is, we use inheritance only if there exists an is-a relationship between two classes.
 Method Overriding in Swift Inheritance:
 In the previous example, we see the object of the subclass can access the method of the superclass.

 ->However, what if the same method is present in both the superclass and subclass?
 In this case, the method in the subclass overrides the method in the superclass. This concept is known as method overriding in Swift.
 We use the override keyword to tell the compiler that we are overriding a method.
 */
class Fruit {
    func displayInformation(){
        print("Need to grow soil and water")
    }
}

class Mango: Fruit {
    override func displayInformation() {
        print("Grow in summer time")
    }
}
let sourMango = Mango()
sourMango.displayInformation()
/*
 In the above example, the same method displayInformation() is present in both the Mango class and the Fruit class.

 Now, when we call the displayInformation() method using the object of the Mango subclass, the method of the Mango class is called.

 This is because the displayInformation() method of the Mango subclass overrides the same method of the Fruit superclass. We have used the override keyword to specify the method is overridden.
 
 super Keyword in Swift Inheritance:
 Previously we saw that the same method in the subclass overrides the method in the superclass.

 However, if we need to access the superclass method from the subclass, we use the super keyword. For example,
 */
class Vehicle {
    var vehicleName: String = ""
    func displayVehicleInformation(){
        print("Use petrol to start engine")
    }
}

class Car: Vehicle {
    override func displayVehicleInformation() {
        print("I can float on the water as well")
        super.displayVehicleInformation()
    }
}
let car = Car()
car.displayVehicleInformation()
/*
 In the above example, the displayVehicleInformation() method of the Car subclass overrides the same method of the Vehicle superclass.
 Inside the Car class, we have used
 // call method of superclass
 super.displayVehicleInformation()
 to call the displayVehicleInformation() method of the Vehicle superclass from the Car subclass.
 So, when we call the displayVehicleInformation() method using the car object
 // call the displayVehicleInformation() method
 car.displayVehicleInformation()
 
 Why Inheritance?
 To understand the benefits of Inheritance, let's consider a situation.
 Suppose we are working with regular polygons such as squares, pentagons, and so on. And, we have to find the perimeter of these polygons based on the input.

 1. Since the formula to calculate perimeter is common for all regular polygons, we can create a Polygon class and a method calculatePerimeter() to calculate perimeter.

 class RegularPolygon {
   calculatePerimeter() {
     // code to compute perimeter
   }
 }
 2. And inherit Square and Pentagon classes from the RegularPolygon class. Each of these classes will have properties to store the length and number of sides because they are different for all polygons.

 class Square: RegularPolygon {
   var length = 0
   var sides = 0
 }
 We pass the value of the length and sides to calculatePerimeter() to compute the perimeter.

 This is how inheritance makes our code reusable and more intuitive.
 */
class RegularPolygon {
    func calculatePerimeter(length: Int, sides:Int){
        print("Perimeter of the polygon is",length * sides)
    }
}
class RegularSquare: RegularPolygon {
    var length = 0
    var sides = 0
     init(length: Int, sides: Int) {
        self.length = length
        self.sides = sides
    }
    
    func calculateArea(){
        print("Regular square area is",length*length)
    }
}
class RegularTriangle: RegularPolygon {
    var length = 0.0
    var sides = 0.0
    func calculateArea() {
        let triangleArea = (sqrt(3)/4) * (length * length)
        print("Regular triangle area is",triangleArea)
    }
}
let shape = RegularSquare(length:3,sides:4)
shape.calculateArea()
shape.calculatePerimeter(length: 3, sides: 4)

let shape1 = RegularTriangle()
shape1.length = 3.0
shape1.calculateArea()
shape1.calculatePerimeter(length: 2, sides: 3)
/*
 In the above example, we have created a RegularPolygon class that calculates the perimeter of the regular polygon.
 Here, the RegularSquare and RegularTriangle inherits from RegularPolygon.
 The formula to calculate the parameter of a regular polygon is common for all, so we have reused the calculatePerimeter() method of the superclass.
 And since the formula to calculate the area is different for different shapes, we have created a separate method inside the subclass to calculate the area.
 */
