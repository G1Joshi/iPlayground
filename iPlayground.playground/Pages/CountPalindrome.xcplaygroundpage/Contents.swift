import Foundation

let sentence = "madam and her civic sense amaze us, as madam teaches us to kayak at noon."

// MARK: - Palindrome

func isPalindrome(_ word: String) -> Bool {
    let word = Array(word)
    let count = word.count
    var current = 0

    while current < count / 2 {
        if word[current] != word[count - current - 1] {
            return false
        }

        current += 1
    }

    return true
}

run("Palindrome") {
    isPalindrome("madam")
}

// MARK: - Count Palindrome

var counts: [String: Int] = [:]
let words = sentence.components(separatedBy: " ")

for word in words {
    if let count = counts[word] {
        counts[word] = count + 1
    } else {
        if isPalindrome(word) {
            counts[word] = 1
        }
    }
}

run("Count Palindrome") {
    counts
}
