import Foundation

class Node {
    var value: Int
    var left: Node?
    var right: Node?

    init(value: Int = 0, left: Node? = nil, right: Node? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

// MARK: - Tree

let tree = Node(
    value: 4,
    left: Node(
        value: 2,
        left: Node(
            value: 1
        ),
        right: Node(
            value: 3
        )
    ),
    right: Node(
        value: 6,
        left: Node(
            value: 5
        ),
        right: Node(
            value: 7
        )
    )
)

func iterateTree(_ tree: Node?) {
    guard let tree else { return }

    iterateTree(tree.left)
    print(tree.value)
    iterateTree(tree.right)
}

run("Tree") {
    iterateTree(tree)
}

// MARK: - Search Tree

func searchTree(_ tree: Node?, _ searchValue: Int) -> Bool {
    guard let tree else { return false }

    return if tree.value == searchValue {
        true
    } else {
        searchTree(tree.left, searchValue) || searchTree(tree.right, searchValue)
    }
}

run("Search Tree") {
    searchTree(tree, 4)
}

// MARK: - Binary Search Tree

func binarySearchTree(_ tree: Node?, _ searchValue: Int) -> Bool {
    guard let tree else { return false }

    return if tree.value < searchValue {
        binarySearchTree(tree.right, searchValue)
    } else if tree.value > searchValue {
        binarySearchTree(tree.left, searchValue)
    } else {
        true
    }
}

run("Binary Search Tree") {
    binarySearchTree(tree, 4)
}
