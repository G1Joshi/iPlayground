import Foundation

let sentence: String = "The quick brown fox jumps over the lazy dog"

// MARK: - Reverse Word

func reverseWord(in word: String) -> String {
    var reverse = ""

    for char in word {
        reverse = String(char) + reverse
    }

    return reverse
}

run("Reverse Word") {
    reverseWord(in: sentence)
}

// MARK: - Reverse Alternate Word

func reverseAlternateWord(in sentence: String) -> String {
    let allWords = sentence.components(separatedBy: " ")

    var words = ""

    for (index, word) in allWords.enumerated() {
        if index % 2 == 1 {
            words += reverseWord(in: word)
        } else {
            words += word
        }
        words += " "
    }

    return words
}

run("Reverse Alternate Word") {
    reverseAlternateWord(in: sentence)
}
