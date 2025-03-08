import Foundation

func pattern1(n: Int) {
    for i in 1...n {
        for j in 1...n {
            print("*", terminator: " ")
        }
        print()
    }
}

run("Pattern 1") {
    pattern1(n: 5)
}
