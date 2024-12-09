import Foundation

// MARK: - Fibonacci Sequence

func fibonacciSequence(_ num: Int) -> [Int] {
    var sequence: [Int] = []

    var a = 0
    var b = 1

    for i in 0 ..< num {
        sequence.append(a)
        let c = a + b
        a = b
        b = c
    }

    return sequence
}

run("Fibonacci Sequence") {
    fibonacciSequence(10)
}

// MARK: - Fibonacci Sequence Recursive

func fibonacciSequenceRecursive(_ num: Int) -> [Int] {
    return [0, 1] + fibonacciSequence(num - 2, 0, 1)
}

func fibonacciSequence(_ num: Int, _ a: Int, _ b: Int) -> [Int] {
    if num < 1 {
        return []
    }

    return [a + b] + fibonacciSequence(num - 1, b, a + b)
}

run("Fibonacci Sequence Recursive") {
    fibonacciSequenceRecursive(10)
}
