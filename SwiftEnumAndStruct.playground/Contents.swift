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
