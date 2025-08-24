import Foundation

var ages = [21, 55, 123, 512, 01, 24, 31, 1]

// for empty array you have to declare type
// var ages: [Int] = []

// Access array
ages.count
ages.first
ages.last
ages[7]

// Add element
ages.append(99)
ages.insert(44, at: 0)
print(ages)

// Sorting
ages.sort()
ages.reverse()
ages.shuffle()
