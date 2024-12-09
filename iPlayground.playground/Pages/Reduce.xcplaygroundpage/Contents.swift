import Foundation

let array: [Int] = [1, 0, 2, 0, 3, 0, 4, 0, 5, 0]
let target: Int = 0

run("Sum \(target)") {
    array.reduce(target) { $0 + $1 }
}

// MARK: - Shorthand Reduce

run("Reduce \(target)") {
    array.reduce(target, +)
}
