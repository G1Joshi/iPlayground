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

func pattern2(n: Int) {
    for i in 1...n {
        for j in 1...i {
            print("*", terminator: " ")
        }
        print()
    }
}

run("Pattern 2") {
    pattern2(n: 5)
}
