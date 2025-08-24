import Foundation

// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true

// Cannot assign to value: 'someConstant' is a 'let' constant
// someConstant = false

someVariable = false

var myNumber = 1.2312
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 1.1231
print(myNumber)

// if statements

var userIsPremium: Bool = false

if userIsPremium == true {
    print("1 - user is premium")
} else {
    print("1.1 - user is not premium")
}
// Shorthand writing
if userIsPremium {
    print("2 - user is premium")
}

if userIsPremium == false {
    print("3 - user is not premium")
}
// Shorthand writing
if !userIsPremium {
    print("4 - user is not premium")
}
// FreeCodeCamp
// Immutability

let myName = "George"
let yourName = "Nick"

var names = [
    myName,
    yourName
]
// you can mutate entire array:
// names = ["Bla"]
names.append("Mariam")
names.append("Shota")

// Value types - here we're just copying values, this is not reference type
let foo = "Foo"
var foo2 = foo
foo2 = "Foo2"
foo
foo2

let moreNames = [
    "Foo",
    "Bar"
]

var copy = moreNames
copy.append("Baz")
moreNames
copy

// Some kind of Objective-C class

let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)
oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
newArray
oldArray

let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)
func changeTheArray(_ array: NSArray) {
    let array2 = array as! NSMutableArray
    array2.add("Baz")
}
changeTheArray(someNames)
someNames
// The prevesion of internal mutabillity of a let's constant only applies to value types. So, class might internally change without Swift actually complaining at all. Only confusion I have here is wether this applies to any class or just NSMutableArray class?
