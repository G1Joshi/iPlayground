import Foundation

let array: [Int] = [1, 0, 2, 0, 3, 0, 4, 0, 5, 0]
let target: Int = 0

run("Filter \(target)") {
    array.filter { $0 == target }
}
