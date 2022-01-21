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

/*
 Ternary Conditional Operator:
 A ternary operator can be used to replace the if...else statement in certain scenarios.
 A ternary operator evaluates a condition and executes a block of code based on the condition. Its syntax is
 condition ? expression1 : expression2
 Here, the ternary operator evaluates condition and

 if condition is true, expression1 is executed.
 if condition is false, expression2 is executed.
 */
let englishSubMarks = 69
let result = (englishSubMarks>80) ? "high score" : "less score"
print("John get the \(result) marks in english subject ")

/*
 Nested Ternary Operators:
 We can use one ternary operator inside another ternary operator. This is called a nested ternary operator in Swift.
 */
let matchScore = 22
let receivedMarks = (matchScore>45) ? "got pass marks only" : ((matchScore>60) ? "got the high score" : "got the less score")
print("Raj \(receivedMarks) in math subject")
/*
 Swift Bitwise and Bit Shift Operators:
 Bitwise operators perform operations on integer data at the individual bit-level. These operations include testing, setting, or shifting the actual bits.
 Here's the list of various bitwise operators included in Swift

 Operators    Name                      Example
 &            Bitwise AND               a & b
 |            Bitwise OR                a | b
 ^            Bitwise XOR               a ^ b
 ~            Bitwise NOT               ~ a
 <<           Bitwise Shift Left        a << b
 >>           Bitwise Shift Right       a >> b
 
 The bitwise AND & operator returns 1 if and only if both the operands are 1. Otherwise, it returns 0.

 The bitwise AND operation on a and b can be represented in the table below:

 a    b    a & b
 0    0    0
 0    1    0
 1    0    0
 1    1    1

 12 = 00001100 (In Binary)

 25 = 00011001 (In Binary)

 // Bitwise AND Operation of 12 and 25

      00001100
 &    00011001
 _____________
      00001000  = 8 (In Decimal)
 */
var a = 12, b = 25
let andOperatorResult = a&b
print("The result of and bit wise operator for 12 and 25 is \(andOperatorResult)")

/*
 Bitwise OR Operator
 The bitwise OR | operator returns 1 if at least one of the operands is 1. Otherwise, it returns 0.

 The bitwise OR operation on a and b can be represented in the table below:

 a    a    a | b
 0    0    0
 0    1    1
 1    1    1
 1    0    1
 
 Let us look at the bitwise OR operation of two integers 12 and 25:

 12 = 00001100 (In Binary)
 25 = 00011001 (In Binary)

 Bitwise OR Operation of 12 and 25
     00001100
 |   00011001
 ____________
     00011101  = 29 (In decimal)
 */
var orA = 12, orB = 25
let orOperatorResult = orA | orB
print("The result of the or bit wise operator is \(orOperatorResult) ")

/*
 Bitwise XOR Operator
 The bitwise XOR ^ operator returns 1 if and only if one of the operands is 1. However, if both the operands are 0, or if both are 1, then the result is 0.

 The bitwise XOR operation on a and b can be represented in the table below:

 a    b    a ^ b
 0    0    0
 0    1    1
 1    0    1
 1    1    0
 Let us look at the bitwise XOR operation of two integers 12 and 25:

 12 = 00001100 (In Binary)
 25 = 00011001 (In Binary)

 Bitwise XOR Operation of 12 and 25
     00001100
 ^   00011001
 ____________
     00010101  = 21 (In decimal)
 */
var xorA = 12, xorB = 25
let xorOperatorResult = 12 ^ 25
print("The result of xor bit wise operator is \(xorOperatorResult)")
/*
 The bitwise NOT ~ operator inverts the bit( 0 becomes 1, 1 becomes 0).
 Note: bitwise NOT of any integer N is equal to -(N + 1)
 Consider an integer 35. As per the rule, the bitwise NOT of 35 should be -(35 + 1) = -36. Now, let's see if we get the correct answer or not.

 35 = 00100011 (In Binary)

 // Using bitwise NOT operator
 ~  00100011
    ________
    11011100
 
 In the above example, bitwise NOT of 00100011 is 11011100. Here, if we convert the result into decimal we get 220.

 However, it is important to note that we cannot directly convert the result into decimal and get the desired output. This is because the binary result 11011100 is also equivalent to -36.

 To understand this we first need to calculate the binary output of -36. We use 2's complement to calculate the binary of negative integers.
 
 2's complement
 The 2's complement of a number N gives -N. It is computed by inverting the bits(0 to 1 and 1 to 0) and then adding 1. For example,

 36 = 00100100 (In Binary)

 1's Complement = 11011011

 2's Complement :
 11011011
  +     1
 ________
 11011100
 
 Here, we can see the 2's complement of 36 (i.e. -36) is 11011100. This value is equivalent to the bitwise complement of 35 that we have calculated in the previous section.

 Hence, we can say that the bitwise complement of 35 = -36.
 */
var notA = 15
print("The result of not bit wise operator is \(~notA)")
/*
 Left Shift Operator:
 The left shift operator shifts all bits towards the left by a specified number of bits. It is denoted by <<.
 */
var leftShiftA = 3
let leftShiftAResult = leftShiftA << 3
print("The result of left shit operator with 3 positions is \(leftShiftAResult)")

/*
 Right Shift Operator:
 The right shift operator shifts all bits towards the right by a certain number of specified bits. It is denoted by >>.
 */
var rightShiftAWithOutSign = 4

let rightShiftAWithOutSignResult = rightShiftAWithOutSign >> 2
print("The result of the right shift with out sign number is \(rightShiftAWithOutSignResult)")    // 1

var rightShiftAWithSign = -4

var rightShiftAWithSignResult = rightShiftAWithSign >> 2
print("The result of the right shit with sign number is \(rightShiftAWithSignResult)")    // -1
/*
 Note:
 For signed numbers, the sign bit (0 for positive number, 1 for negative number) is used to fill the vacated bit positions.
 
 Signed integer represents both positive and negative integers while an unsigned integer only represents positive integers.
 */
