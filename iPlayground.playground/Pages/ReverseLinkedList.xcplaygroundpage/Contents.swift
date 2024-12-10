import Foundation

class Node {
    var value: Int
    var next: Node?

    init(value: Int = 0, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

// MARK: - Linked List

let list: Node? = Node(
    value: 1, next: Node(
        value: 2, next: Node(
            value: 3, next: Node(
                value: 4, next: Node(
                    value: 5
                )
            )
        )
    )
)

run("Linked List") {
    var node = list

    while node != nil {
        print("->", node!.value, terminator: " ")
        node = node?.next
    }
}

// MARK: - Reverse Linked List

func reverseLinkedList(_ head: Node?) -> Node? {
    var current = head
    var next: Node?
    var prev: Node?

    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }

    return prev
}

let reversedList: Node? = reverseLinkedList(list)

run("Reversed Linked List") {
    var node = reversedList

    while node != nil {
        print("->", node!.value, terminator: " ")
        node = node?.next
    }
}
