import Foundation

let names: [String] = ["A", "B", "C", "B", "C", "C"]

func mostCommonName(in names: [String]) -> String {
    var map: [String: Int] = [:]

    for name in names {
        if let count = map[name] {
            map[name] = count + 1
        } else {
            map[name] = 1
        }
    }

    var name = ""

    for entry in map {
        if let count = map[name] {
            if entry.value > count {
                name = entry.key
            }
        } else {
            name = entry.key
        }
    }

    return name
}

run("Most Common Name") {
    mostCommonName(in: names)
}
