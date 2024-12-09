import Foundation

let numbers = 1 ... 1000

for number in numbers {
    print("\(number): ", terminator: "")

    if number % 3 == 0 {
        print("Fizz", terminator: "")
    }

    if number % 5 == 0 {
        print("Buzz", terminator: "")
    }

    print()
}
