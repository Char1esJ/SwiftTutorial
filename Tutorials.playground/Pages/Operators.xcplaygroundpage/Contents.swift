import Foundation


//// Addition
//// Incorrect - likeCount = 5 + 1
//// likeCount = likeCount + 1
//likeCount += 1
//
//// Substraction
//likeCount -= 1
//
//// Multiplication
//likeCount *= 1.5
//
//// Division
//likeCount /= 2
//
//// Order of operations does matter!
//// PEMDAS
//likeCount = likeCount - 1 * 1.5

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

likeCount += 1

print(likeCount)

if likeCount == 5 {
    print("Post as 5 likes.")
}else {
    print("Post does NOT have 5 likes")
}

if likeCount != 5 {
    print("Post does NOT have 5 likes")
}

if likeCount > 5 {
    print("Post has greater than 5 likes")
}

if likeCount >= 5 {
    print("Post has greater or equal to 5 likes")
}

if likeCount > 3 && commentCount > 0 {
    print("Post has greater than 3 likes and greater than 0 comments")
} else {
    print("Post has 3 or less likes or post has 0 or less comments.")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has greater than 3 likes or greater than 0 comments")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments.")
}

var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium && userIsNew {
    
}

if likeCount > 3 && commentCount > 0 || viewCount > 50 {
    print("Execute")
}

if likeCount > 3 && (commentCount > 0 || viewCount > 50) {
    print("Execute")
}

if likeCount > 5 || userIsPremium {
    
}

if likeCount == 5 {
    print("Post has 5 likes.")
}else if likeCount > 2 {
    print("greater then 2")
}else if userIsPremium {
    print("is premium")
}else {
    
}

// FreeCodeCamp

// 1. unary prefix
let foo = !true
// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
// 3. binary infix
let res = 1 + 2
let names = "Foo" + " " + "Bar"


// ternery operator
let age = 30
//let message: String
//if age >= 18 {
//    message = "Adult"
//} else {
//    message = "Not adult"
//}
//message

// Another way to write that code with ternary operator
let message = age >= 18
? "Adult"
: "Not adult"
