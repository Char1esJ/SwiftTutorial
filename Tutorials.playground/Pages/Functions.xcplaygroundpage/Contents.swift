import Foundation

func printName(name: String) {
    print(name)
}
printName(name: "Alderson")

func add(firstNumber: Int, to secondNumber: Int) -> Int {
    
    let sum = firstNumber + secondNumber
   return 3
}

add(firstNumber: 30, to: 12) // call site

// Swiftful Thinking Tutorial

func myFirstFunction() {
    print("MY FIRST FUNCTION CALLED")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("MY SECOND FUNCTION CALLED")
}

func myThirdFunction() {
    print("MY THIRD FUNCTION CALLED")
}

myFirstFunction()

func getUserName() -> String {
    let username: String = "Nick"
    return username
}

func checkIfUserIsPremium() -> Bool {
    return false
}

let name: String = getUserName()

//////////////////////////////////////////////////////////

showFirstScreen()

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}

func doSomethingElse(someValue: Bool) {
    
}

// Guard

let newValue = doSomething()

func doSomething() -> String {
    var title: String = "Avengers"
    
    // "If title is equal to Avengers"
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}

func doSomethingElse() {
    var title: String = "Avengers"
    
    // "Make sure title == Avengers
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    
    print("Marvel")
}

func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    
    // "Make sure title == Avengers
    guard title == "Avengers" else {
        return false
    }
    
    return true
}

func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers"
    
    if title == "Avengers" {
        return true
    } else {
        return false
    }
}

// Calculated variables are basically functions
// Generally good for when you don't need to pass data into the function

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int {
    return number1 + number2
}

// FreeCodeCamp

func noArgumentsAndNoReturnValue() {
    "IDK what i'm doing"
}
noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    let newValue = value + 2
}

plusTwo(value: 2)

func newPlusTwo(value: Int) -> Int {
    value + 2
}

newPlusTwo(value: 30)

func customAdd(
    value1: Int,
    value2: Int,
) -> Int {
    value1 + value2
}

let customAdded = customAdd(value1: 31, value2: 32)

// You can ignore external argument names

func customMinus(_ left: Int, _ right: Int) -> Int {
    left - right
}

let customSubstraced = customMinus(30, 20)
//
@discardableResult

func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int,
) -> Int {
    lhs + rhs
}

// Fucntions can contain functions

func somethingComplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}
somethingComplicated(with: 30)

// Arguments can have default values
func getFullname(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    "\(firstName) \(lastName)"
}
// 4 Ways to call this func
getFullname()
getFullname(firstName: "Baz")
getFullname(lastName: "Foo")
getFullname(firstName: "Baz", lastName: "Qux")



