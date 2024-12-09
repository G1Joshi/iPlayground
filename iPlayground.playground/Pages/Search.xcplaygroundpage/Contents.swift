import Foundation

let numbers = (1 ... 100).map { $0 * 100 }
let value = 4500

// MARK: - Linear Search

func linearSearch(for value: Int, in numbers: [Int]) -> Int {
    for (index, number) in numbers.enumerated() {
        if number == value {
            return index
        }
    }

    return -1
}

run("Linear Search") {
    linearSearch(for: value, in: numbers)
}

// MARK: - Binary Search

func binarySearch(for value: Int, in numbers: [Int]) -> Int {
    var low = numbers.startIndex
    var high = numbers.endIndex - 1

    while low <= high {
        let mid = (low + high) / 2
        let result = numbers[mid]

        if value > result {
            low = mid + 1
        } else if value < result {
            high = mid - 1
        } else {
            return mid
        }
    }

    return -1
}

run("Binary Search") {
    binarySearch(for: value, in: numbers)
}

// MARK: - Binary Search Recursive

func binarySearchRecursive(for value: Int, in numbers: [Int]) -> Int {
    var low = numbers.startIndex
    var high = numbers.endIndex - 1

    return binarySearch(for: value, in: numbers, low: low, high: high)
}

func binarySearch(for value: Int, in numbers: [Int], low: Int, high: Int) -> Int {
    if low > high {
        return -1
    }

    let mid = (low + high) / 2
    let result = numbers[mid]

    return if value > result {
        binarySearch(for: value, in: numbers, low: mid + 1, high: high)
    } else if value < result {
        binarySearch(for: value, in: numbers, low: low, high: mid - 1)
    } else {
        mid
    }
}

run("Binary Search Recursive") {
    binarySearchRecursive(for: value, in: numbers)
}
