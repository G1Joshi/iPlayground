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

func pattern3(n: Int) {
    for i in 1...n {
        for j in 1...i {
            print(j, terminator: " ")
        }
        print()
    }
}

run("Pattern 3") {
    pattern3(n: 5)
}

func pattern4(n: Int) {
    for i in 1...n {
        for j in 1...i {
            print(i, terminator: " ")
        }
        print()
    }
}

run("Pattern 4") {
    pattern4(n: 5)
}

func pattern5(n: Int) {
    for i in 1...n {
        for j in 1...(n - i + 1) {
            print("*", terminator: " ")
        }
        print()
    }
}

run("Pattern 5") {
    pattern5(n: 5)
}

func pattern6(n: Int) {
    for i in 1...n {
        for j in 1...(n - i + 1) {
            print(j, terminator: " ")
        }
        print()
    }
}

run("Pattern 6") {
    pattern6(n: 5)
}

func pattern7(n: Int) {
    for i in 1...n {
        for j in 1...(n - i + 1) {
            print(terminator: " ")
        }
        for j in 1...(2 * i - 1) {
            print("*", terminator: "")
        }
        for j in 1...(n - i + 1) {
            print(terminator: " ")
        }
        print()
    }
}

run("Pattern 7") {
    pattern7(n: 5)
}

func pattern8(n: Int) {
    for i in 1...n {
        for j in 1...i {
            print(terminator: " ")
        }
        for j in 1...(2 * (n - i) + 1) {
            print("*", terminator: "")
        }
        for j in 1...i {
            print(terminator: " ")
        }
        print()
    }
}

run("Pattern 8") {
    pattern8(n: 5)
}

func pattern9(n: Int) {
    pattern7(n: n)
    pattern8(n: n)
}

run("Pattern 9") {
    pattern9(n: 5)
}

func pattern10(n: Int) {
    for i in 1...2 * n - 1 {
        if i > n {
            for j in 1...2 * n - i {
                print("*", terminator: "")
            }
        } else {
            for j in 1...i {
                print("*", terminator: "")
            }
        }
        print()
    }
}

run("Pattern 10") {
    pattern10(n: 5)
}
