import Foundation

var ages: [Int] = [21, 23, 14, 19]
ages.sort()

// 4 Ways to unwrap optional

// if let
//if let oldestAge = ages.last {
//    print("The oldest age is \(oldestAge)")
//} else {
//    print("Array's empty")
//}

// nil coalescing
//let oldestage = ages.last ?? 999

// guard statement
func getOldestAge() {
    var ages: [Int] = [21, 23, 14, 19]
    ages.sort()
    guard let oldestAge = ages.last else {
        return
    }
    print("\(oldestAge) is the oldest age.")
    // if its nill, guard will return nil and function will stop, so no code below will execute.
}
getOldestAge()

// force unwraz (Never do that)
let oldestAge = ages.last!

// Swiftful Thinking

// "There is alwyas a value and its a Boolean"
let myBool: Bool = false

// "We don't know if there is a value, but if there is, it is a Boolean"
var myOtherBool: Bool? = true

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

// nul coalescing
let newValue: Bool? = myOtherBool

// "The value of myOtherBool (if there is one), otherwise false"
let newValue2: Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")

var myString: String? = "hi"

print(myString ?? "No value")

myString = "New next."

print(myString ?? "No value")

myString = nil

print(myString ?? "No value")

// -----------------------------------

var userIsPremium: Bool? = nil

@MainActor func checkIfUserIsPremium() -> Bool? {
    
    return userIsPremium
}

@MainActor func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()

// if-let
// when if-;et is successful, enter the closure
@MainActor func checkIfUserIsPremium3() -> Bool {
    
    // if there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}

@MainActor func checkIfUserIsPremium4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
    
    return false
}

@MainActor func checkIfUserIsPremium5() -> Bool {
    
    if let userIsPremium {
        return userIsPremium
    }
    
    return false
}

// Guard
// when a guard is a failure, enter the closure
@MainActor func checkIfUserIsPremium6() -> Bool {
    
    // Make sure there is a value
    // if there is a value, let newValue equal taht value
    // else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    
    // Here we hae access to non-optional value
    return newValue
}

@MainActor func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}

// more complex examples

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavouriteMovie: String? = nil

@MainActor func checkIfUserIsSetup() -> Bool {
    
    if let isNew = userIsNew, let didComleteOnboarding = userDidCompleteOnboarding, let favouriteMovie = userFavouriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavouriteMovie == String
        
        return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didComleteOnboarding, userFavouriteMovie: favouriteMovie)
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavouriteMovie == nive
        return false
    }
}

// Same func with guard

@MainActor func checkIfUserIsSetup2() -> Bool {
    
    guard let userIsNew,
          let userDidCompleteOnboarding,
          let userFavouriteMovie
    else {
        return false
    }
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavouriteMovie: userFavouriteMovie)
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavouriteMovie: String) -> Bool {
    
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}



// nested if-let
@MainActor func checkIfUserIsSetup3() -> Bool {

    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavouriteMovie {
                // userFavouriteMovie == String
                
                return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavouriteMovie: userFavouriteMovie)
            } else {
                // userFavouriteMovie == nill
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
}

// nested guard
@MainActor func checkIfUserIsSetup4() -> Bool {

    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    guard let userFavouriteMovie else {
        // userFavouriteMovie == nill
        return false
    }
    // userFavouriteMovie == String
    
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavouriteMovie: userFavouriteMovie)
}

// Optional chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    let username: String? = getUsername()
    
    // "I will get hte count if the username is not nil"
    let count: Int? = username?.count
    
    let title: String = getTitle()
    
    // "I will get the count always"
    let count2 = title.count
    
    
    // if username has a value, and first chraacter in username has a value, then return the value of isLowercase
    // Optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
}
