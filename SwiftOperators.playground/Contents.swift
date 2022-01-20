import UIKit

//Swift operators
/*
 1) Arithmetic Operator
 +  Addition        3+7 = 10
 -  Subtraction     5-2 = 3
 *  Multiplication  3*3 = 9
 /  Division        6/3 = 2
 %  Modulo          5%2 = 1
 
 Note:
 The / operator performs division between two numbers, we will only get the quoitent
 ex: 7/3 = 2
 If we use / operator with floating point numbers, we will get the actual result.
 ex: 7.0/3.0 = 2.333333
 */
print("Addition \(3+5)")
print("Subtractions \(6-2)")
print("Multiplication \(6*4)")
let divisionVlaue = (7/2)
print("Division \(divisionVlaue)")
let exactDivisionValue = (7.0/2.0)
print("Division with float value \(exactDivisionValue)")
let moduloValue = 7%3
print("Modulo \(moduloValue)")

/*
 2) Assignment Operators
 =  Assignment Operator         a = 4
 += Addition Assignment         a += 1 // a = a+1
 -= Subtraction Assignment      a -= 4 // a = a-3
 *= Multiplication Assignment   a *= 3 // a = a*3
 /= Division Assignment         a /= 2 // a = a/2
 %= Remainder Assignment        a %= 2 // a = a%2
 */
var sumAssignment = 5
print("Add assignment \(sumAssignment+4)")

/*
 3) Comparison Operator
 Comparison operators compare two values and return a boolean result
 ==     Is Equal To                 3 == 5 result false
 !=     Not Equal To                3 != 5 result true
 >      Greater Than                3 > 5 result false
 <      Less Than                   3 < 5 result true
 >=     Greater Than or Equal To    3 >=5 result falsie
 <=     Less Than or Equal To       3 <=5 result true
 */
var value1 = 5, value2 = 2
//equal to operator
print(value1 == value2)
//not equal to operator
print(value1 != value2)
//greater than operator
print(value1 > value2)
//less than operator
print(value1 < value2)
//greater than or equal to operator
print(value1 >= value2)
//less than or equal to operator
print(value1 <= value2)
/*
 4) Logical Operators
 Logical operators are used to check whether an experssion is ture or false. They are used in decision making.
 &&     a && b      Logical AND: true only if both the operands are true
 ||     a || b      Logical OR: true if at least one of the operands is true
 !      !a           Logical NOT: true if the operand is false and vice-versa
 */
//logical AND
var number1 = 5, number2 = 2
print(number1>number2 && number2==3)
//logical OR
print(number1>number2 || number2==3)
//logical NOT
print(!false)
/*
 5) Bitwise Operator
 These are used to perform operations on individual bits
 &      Binary AND
 |      Binary OR
 ^      Binary XOR
 ~      Binary One's Complement
 <<     Binary Shift Left
 >>     Binary Shift Right
 
 6)Other Operators
 ?:         Ternary Operator - return value based on the condition      (5>2) ? "True" : "False" //True
 ??         Nil-Colescing Operator - checks whether an optional contains a value or not     (number ?? 5)
 ...        Range Operator - define range containing values        (1 ... 3) //range containing values 1,2,3
 */

/*
 Swift Operator precedence
 Operator precedence is a set of rules that determines which operator is executed first.
 Let's take an example, suppose there is more than one operator in an expression.
 */
var num = 8 + 5 * 4 // 28
/*
Here,
-> if + is executed first, the value of num will be 52
 -> if * is executed first, the value of num will be 28
 
 In this case, operator precedence is used to identify which operator is executed first. The operator precedence of * is higher than + so multiplication is executed first.
 
 Operator precedence table
 Operators                  Examples
 Bitwise shift              >> <<
 Multiplicative             % * /
 Additive                   | - + -  ^
 Range                      ..< ...
 Casting                    is as
 Nil-Coalescing             ??
 Comparison                 != > < >= <= === ==
 Logical AND                &&
 Logical OR                 ||
 Ternary Operator           ? :
 Assignment Precedence      |= %= /= *= >>= <<= ^= += -=
 */
var precedenceNumber = 15
precedenceNumber += 10 - 2 * 3
print(precedenceNumber)
//Here, the precedence order from higher to lower is *, -, and +=
/*
 Operator Associativity:
 If an expression has two operators with similar precedence, the expression is evaluated according to its associativity (either left to right, or right to left).
 */
print(5 * 6 / 3) // 10
/*
 their associativity is from left to right. Hence, 5 * 6 is executed first.
 Note: If we want to execute the division first, we can use parentheses as print(5 * (6 / 3)).
 
 Operator Associativity Table:
 If an expression has two operators with similar precedence, the expression is evaluated according to its associativity.
Left Associativity - operators are evaluated from left to right
Right Associativity - operators are evaluated from right to left
 Non-associativity - operators have no defined behavior
 
 The table below shows the associativity of Swift operators.

 Operators                              Associativity
 Bitwise Shift: >> <<                   none
 Multiplicative: % * /                  left
 Additive: | + - ^                      left
 Range: ..< ...                         none
 Casting: is as                         none
 Nil-Coalescing: ??                     right
 Comparison: != > < >= <= === ==        none
 Logical AND: &&                        left
 Logical OR: ||                         left
 Ternary Operator: ? :                  right
 Assignment: |= %= /= *= >>= <<= ^=     right
 */
