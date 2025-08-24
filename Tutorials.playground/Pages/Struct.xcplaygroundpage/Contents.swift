import Foundation

// Reference type
class Member {
    var name: String
    var yearsExp: Int
    var position: String
    
    init(name: String, yearsExp: Int, position: String) {
        self.name = name
        self.yearsExp = yearsExp
        self.position = position
    }
}

var gogi = Member(name: "Gogi", yearsExp: 3, position: "Slave")

var davita = gogi
davita.name = "nick"
gogi.name

// Value type
struct Member2 {
    var name: String
    var yearsExp: Int
    var position: String
}

var rat = Member2(name: "Rat", yearsExp: 2, position: "Engineer")

var ono = rat
ono.name = "ono"
ono.name
rat.name
