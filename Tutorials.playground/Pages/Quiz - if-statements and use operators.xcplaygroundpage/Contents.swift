import Foundation

// claude
// Question 1: What's the difference between = and == in Swift?
// = used for assignment and == is used for comparison

// Question 2: In Swift, do you need parentheses around the condition in an if-statement? For example, is if (x > 5) required or can you write if x > 5?
// No

// Question 3: What will this code print?
// B

// Question 4: What's the result of !true && false || true in Swift?
// True

// Question 5: Which comparison operators can you use with strings in Swift, and what do they compare?
// ==, !== (equality); <, <=, >, >= (alphabetical compariso)

// Task 1 - Age Categories: Write code that takes an age and prints the appropriate category:
var age = 66

if age >= 0 && age <= 12 {
    print("Child")
} else if age >= 13 && age <= 17 {
    print("Teen")
} else if age >= 18 && age <= 64 {
    print("Adult")
} else {
    print("Senior")
}
// Task 2 - Password Validator: Create a simple password checker that validates if a password is "strong" based on these rules:
var pass = "Hi1oiasjd1293"

if pass.count >= 8 {
    print("Strong password.")
}else {
    print("Weak Password")
}

pass = pass.first!.uppercased()
print(pass)

// Task 3 - Grade Calculator: Write code that converts a numerical score (0-100) to letter grades:
