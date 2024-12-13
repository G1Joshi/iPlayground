import Foundation

// MARK: - Node

class Node<T> {
    let data: T
    var next: Node?

    init(data: T, next: Node? = nil) {
        self.data = data
        self.next = next
    }

    deinit {
        print("Node: \(data) removed")
    }
}

// MARK: - Stack

class Stack<T> {
    var top: Node<T>?

    func push(_ data: T) {
        let node = Node(data: data)
        node.next = top
        top = node
    }

    func pop() -> T? {
        let data = top?.data
        top = top?.next
        return data
    }

    func peek() {
        if let data = top?.data {
            print("Top: \(data)")
        }
    }
}

// MARK: - Stack of Int

let stack = Stack<Int>()

run("Stack Of Int") {
    stack.push(1)
    stack.peek()

    stack.push(2)
    stack.peek()

    stack.push(3)
    stack.peek()

    stack.pop()
    stack.peek()

    stack.pop()
    stack.peek()
}

// MARK: - Stack of String

let newStack = Stack<String>()

run("Stack Of String") {
    newStack.push("A")
    newStack.peek()

    newStack.push("B")
    newStack.peek()

    newStack.push("C")
    newStack.peek()

    newStack.pop()
    newStack.peek()

    newStack.pop()
    newStack.peek()
}
