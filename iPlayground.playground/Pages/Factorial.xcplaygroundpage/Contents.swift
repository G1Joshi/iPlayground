import Foundation

// MARK: - Factorial

func factorial(for num: Int) -> Int {
    if num < 1 {
        return 1
    }

    var result = 1

    for i in 1 ... num {
        result *= i
    }

    return result
}

run("Factorial") {
    factorial(for: 5)
}

// MARK: - Factorial Recursion

func factorialRecursion(for num: Int) -> Int {
    if num < 1 {
        return 1
    }

    return num * factorialRecursion(for: num - 1)
}

run("Factorial Recursion") {
    factorialRecursion(for: 5)
}
