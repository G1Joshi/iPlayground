import Foundation

let array: [Int] = [1, 0, 2, 0, 3, 0, 4, 0, 5, 0]
let target: Int = 2

run("Multipy \(target)") {
    array.map { $0 * target }
}

// MARK: - Compact Map

let nilArray: [Int?] = [1, nil, 2, nil, 3, nil, 4, nil, 5, nil]

run("Compact Map") {
    nilArray.compactMap { $0 }
}

// MARK: - Flat Map

let arrayOfArrays: [[Int]] = [[1, 2], [3, 4], [5]]

run("Flat Map") {
    arrayOfArrays.flatMap { $0 }
}
