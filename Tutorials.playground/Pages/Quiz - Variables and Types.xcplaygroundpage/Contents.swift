import Foundation

// 1) Question 1: What's the difference between var and let in Swift? When should you use each one?
// var lets you create variable, which value can change in the future and let creates constant

// 2) Question 2: What happens if you try to change the value of a constant after it's been declared?
// you'dd get error.

// 3) Question 3: What's the difference between explicit and implicit type annotation? Give an example of each.
// Implicit type annotation means when you don't specify the type of variable, like this: let firstName = "Nick"
// Explicit means when you specify the exact type: let firstName: String = "Nick"

// Tasks 1
var name = "John"
var age = 25
name = "Jane"
age = age + 1

let score: Double = 95.5
var isActive: Bool = true

// Task 2
let mystery1: Int = 42
let mystery2: Double = 3.14
let mystery3: String = "Hello"
let mystery4: Bool = true
let mystery5: Double = 42.0

// Task 3
let userName = "George"
var userAge = 21
var balance: Double = 1231.31
let accId: Int = 12312
var member: Bool = true

// Task 4
var user = "User \(userName) (ID:\(accId)) is \(userAge) years old with $\(balance) balance. Premium status: \(member)"

print(user)
// Bonus question: Can you declare a constant (let) without immediately assigning a value to it? like this:
//let userinput: String
//userinput = "nick"
// Answer: Yes

// Challenge 1
// change let to var

// Challenge 2
// let message = "I am " + age + " years old and " + height + " feet tall"

// Challenge 3
// we'd get 13.14

let x: Double = 10
let y: Double = 3.14
let result = x + y

// or you can convert types using String(), Double, Int(). In this example you could've wrote: let result = double(x) + y

// ChatGPT
// 1.1) var
// 1.2) let
// 1.3) let, since most likely variables that i'll declare won't change.
// 2.1) Int, Float, Double
// 2.2) Double is more precise (about 15-16 decimal digits), while Float has about 6-7. The main differene is also that Double uses 64 bits, Float uses 32 bits.
// 2.3) "123" is string, and to convert it i would write int("123"):
var test = "abc"
var res = (Int(test) ?? 0) + 123
print(res)
// 3.1) type safety means that if for example i declare a variable that is int, i cant use it as a string anymore.
// 3.2) It will give you an eroor
// 4.1) Type inference means Swift automatically figures out the type based on the value you assign.
// 4.2) int
// 5.1) no
// 5.2) no

// Coding Challenge 1)
let maxScore = 100
var currentScore = 0

// 2)
var myname = "George"
var myage = 19
print("My name is \(myname) and I am \(myage) years old.")

// 3)
var numStr = "42"
var result1 = Int(numStr)! + 8
print(result1)


// Task: Create a constant for temperature in Celsius
//       Convert it to Fahrenheit using the formula: F = C × 9/5 + 32
//       Print: "Celsius: X, Fahrenheit: Y"

let temp = 28.0
let tempFar = temp * (9.0/5.0) + 32
print("Celsius: \(temp), Fahrenheut: \(tempFar)")
