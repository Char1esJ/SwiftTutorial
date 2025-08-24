import Foundation

/////////////////////////////////////Simple Values/////////////////////////////////////

// Values are never implicitly converted to another type. If you need to convert a value to a diﬀerent type, explicitly make an instance of the desired type.S
let label = "The width is"
let width = 94
let widthLabel = label + String(width)

// There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses. For example:
let bananas = 5
let mangos = 13
let bananasSum = "I have \(bananas) banans"
let fruitSum = "I have \(bananas + mangos) pieces of fruit."

// Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.
var num1: Float = 123.1
var name1 = "George"
//print("Hi \(name1), you have \(num1) $")

// Use three double quotation marks (""") for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation marks. For example:
let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
    Except for this line.
Double quotes (") can appear without being escaped.
I still have \(bananas + mangos) pieces of fruit.
"""
//print(quotation)

// Create arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
var fruits = ["strawberries", "apples", "bananas"]
fruits[1] = "grapes"
fruits.append("blueberries")
fruits.insert("asd", at: 3)
print(fruits)

var occupations = [
    "Davit": "Elextrik",
    "Gogi": "Unemployed",
    "Tchaba": "Fisherman",
]

occupations["Gogi"] = "Employed"
//print(occupations)

// You also use brackets to write an empty array or dictionary. For an array, write [], and for a dictionary, write [:].
fruits = []
occupations = [:]
print(occupations)

// If you’re assigning an empty array or dictionary to a new variable, or another place where there isn’t any type information, you need to specify the type.
let empyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

/////////////////////////////////////Control Flow/////////////////////////////////////

// Parentheses around the condition or loop variable are optional. Braces around the body are required.

let uniScores = [51, 91, 41, 94, 86, 77]
var studentsPassed = 0

for pass in uniScores {
    if pass >= 51 {
        studentsPassed += 1
    }
}
print(studentsPassed)

// You can write if or switch after the equal sign (=) of an assignment or after return, to choose a value based on the condition.

let passDecoration = if studentsPassed >= 5 {
    "Course went successfully"
} else {
    "Course Failed"
}
print(passDecoration)

var optString: String? = "Wazap"
print(optString == nil)

var optName: String? = nil
var greetings = "Hi!"

if optName != nil {
    let name = optName! // This is what 'if let' does automatically
    greetings = "Hi, \(name)"
} else if let name = optName {
    greetings = "Not welcome here, \(name)"
}

// Shorthand version
//if let name = optName
//    greetings = "Hi, \(name)"
//}

// nil coalescing
let nickname: String? = nil
let fullname: String = "Tom Riddle"
let infGreeting = "Hi \(nickname ?? fullname)"

// OR
if let nickname {
    print("Hey, \(nickname)")
}

// Switch
let vegi = "pepper"
switch vegi {
case "onion":
    print("A")
case "cucumber", "watercress":
    print("B")
case let x where x.hasSuffix("pepper"):
    print("C \(x)") // Notice how let can be used in a pattern to assign the value that matched the pattern to a constant.
default:
    print("D")
}

let interestingNumbers = [
"Prime": [2, 3, 5, 7, 11, 13],
"Fibonacci": [1, 1, 2, 3, 5, 8],
"Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestType: String? = nil

for (value, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestType = value
        }
    }
}
if let largestType1 = largestType {
    print("Result: \(largestType1) \(largest)")
}
//but I could've done this without optionals, it wasn't really necessary

var num = 5
while num < 50 {
    num *= 2
}

var num2 = 3
repeat {
    num2 *= 2
} while num2 < 0
print(num2)

var total = 0
for i in 0..<5 {
    total += i
}
print(total)
