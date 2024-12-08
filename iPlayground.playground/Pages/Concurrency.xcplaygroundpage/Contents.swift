import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// MARK: - Custom Thread

class CustomThread {
    var thread: Thread!

    func createThread() {
        thread = Thread(target: self, selector: #selector(threadSelector), object: nil)
    }

    @objc func threadSelector() {
        print("Custom Thread")
    }
}

let customThread = CustomThread()
customThread.createThread()
customThread.thread.start()

// MARK: - QoS

extension DispatchQoS.QoSClass {
    static let allCases: [Self] = [.background, .default, .unspecified, .userInitiated, .userInteractive, .utility]
}

DispatchQueue.main.async {
    for i in 1...10 {
        let isMainThread = Thread.current.isMainThread
        print("main; MainThread: \(isMainThread)")
    }
}

for qos in DispatchQoS.QoSClass.allCases {
    DispatchQueue.global(qos: qos).async {
        for i in 1...10 {
            let isMainThread = Thread.current.isMainThread
            print("global-\(qos); MainThread: \(isMainThread)")
        }
    }
}

// MARK: - Custom Queue

let customQueue = DispatchQueue(
    label: "CustomQueue",
    qos: .default,
    attributes: .concurrent,
    autoreleaseFrequency: .inherit,
    target: .global()
)

customQueue.async {
    for i in 1...10 {
        let isMainThread = Thread.current.isMainThread
        print("custom; MainThread: \(isMainThread)")
    }
}

// MARK: - Dispatch Group

let dispatchGroup = DispatchGroup()

dispatchGroup.enter()
DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
    print("World")
    dispatchGroup.leave()
}

dispatchGroup.enter()
DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
    print("Hello")
    dispatchGroup.leave()
}

print("Before")

dispatchGroup.notify(queue: .main) {
    print("Done")
}

print("After")
