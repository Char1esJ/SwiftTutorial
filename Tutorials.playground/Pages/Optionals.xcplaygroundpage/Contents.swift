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
