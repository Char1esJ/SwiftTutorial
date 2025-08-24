import Foundation

//func add(
//    _ lhs: Int,
//    _ rhs: Int
//) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int
    = { (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
}
add(20,30)

func customAd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int // closure at the end of a function
) -> Int {
    function(lhs, rhs)
}

// You can do it manually
//customAd(
//    20,
//    30,
//    using: { (lhs: Int, rhs: Int) -> Int in lhs + rhs
//    }
//)

// Trailing closure syntax, happens if there is closure at th end of a function
customAd(
    20,
    30
    ) { (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }

// Shorter Version (Cleanup) (But compiler takes more time for such code, when you don't specify types)
customAd(
    20,
    30
    ) { (lhs, rhs) in
        lhs + rhs
    }

// Even shorter Version
customAd(20, 30) { $0 + $1 }

// Passing operators to closures
//let ages = [30, 20, 19, 40]
//ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in lhs > rhs
//})

// Shorter version
let ages = [30, 20, 19, 40]
ages.sorted(by: <)
ages.sorted(by: >)

// If you make a mistake of putting argument in the begining or in the middle
func customAdd2 (
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int,
) -> Int {
    function(lhs, rhs)
}

//customAdd2(
//    using: { (lhs, rhs) in
//        lhs + rhs
//    }, 20, 30)

// Shorter Version
customAdd2(
    using: { $0 + $1 }, 20, 30)

// We can pass normal functions to closures

func add10To(value: Int) -> Int {
    value + 10
}

func add20To(value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int, using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20) { value in
        value + 30
    }

// Or pass a refernece to other functions
doAddition(
    on: 20,
    using: add10To(value:)
)

doAddition(
    on: 20,
    using: add20To(value:)
)
