import Foundation

let array: [String] = ["a", "b", "c", "d", "e"]
let selected: String = "d"

// MARK: - Wrap Array Using Loop

func wrapArray(for array: [String]) -> [String] {
    var newArray: [String] = []
    var priorArray: [String] = []

    for entry in array {
        if entry == selected || !newArray.isEmpty {
            newArray.append(entry)
        } else {
            priorArray.append(entry)
        }
    }

    return newArray + priorArray
}

run("Wrap Array Loop") {
    wrapArray(for: array)
}

// MARK: - Wrap Array Using Index

func wrapArray(in array: [String]) -> [String] {
    let index = array.firstIndex(of: selected)

    if let index {
        let prefix = array.prefix(upTo: index)
        let suffix = array.suffix(from: index)
        return Array(suffix + prefix)
    } else {
        return []
    }
}

run("Wrap Array Index") {
    wrapArray(in: array)
}
