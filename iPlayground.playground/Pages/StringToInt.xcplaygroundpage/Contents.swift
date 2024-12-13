import Foundation

let number: String = "12345"

func stringToInt(number: String) -> Int {
    var n = 0

    for (index, char) in number.enumerated() {
        n = n * 10 + (Int(String(char)) ?? 0)
    }

    return n
}

run("String to Int") {
    stringToInt(number: number)
}
