import Foundation

// MARK: - Weak

class Person {
    let name: String
    weak var bank: Bank?

    init(name: String, bank: Bank? = nil) {
        self.name = name
        self.bank = bank
    }

    deinit {
        print("Person: \(name) deallocated")
    }
}

// MARK: - Unowned

class Bank {
    let name: String
    unowned var person: Person

    init(name: String, person: Person) {
        self.name = name
        self.person = person
    }

    deinit {
        print("Bank: \(name) deallocated")
    }
}

var person: Person? = Person(name: "John")
var bank: Bank? = Bank(name: "City", person: person!)
person!.bank = bank

person = nil
bank = nil
