import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let digitSemaphore = DispatchSemaphore(value: 1)
let digitQueue = DispatchQueue(label: "digit")
let alphabetSemaphore = DispatchSemaphore(value: 0)
let alphabetQueue = DispatchQueue(label: "alphabet")

// MARK: - Print Digit

func printDigit() {
    digitQueue.async {
        for i in 1 ... 26 {
            digitSemaphore.wait()
            print(i, terminator: " ")
            alphabetSemaphore.signal()
        }
    }
}

// MARK: - Print Alphabet

func printAlphabet() {
    alphabetQueue.async {
        for i in 0 ... 25 {
            alphabetSemaphore.wait()
            print(Character(UnicodeScalar(i + 65)!), terminator: " ")
            digitSemaphore.signal()
        }
    }
}

printDigit()
printAlphabet()

DispatchQueue.main.async {
    print()
    run("Main Thread") {
        Thread.isMainThread
    }
}
