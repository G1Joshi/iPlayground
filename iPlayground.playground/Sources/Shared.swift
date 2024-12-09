//
//  Shared.swift
//
//
//  Created by Jeevan Chandra Joshi on 09/12/24.
//

import Foundation

public func run<T>(_ title: String? = nil, showTime: Bool = true, _ block: () -> T) {
    if let title {
        print("\(title)")
    }

    let output = measureTime(block)

    print("Result: \(output.result)")

    if showTime {
        print("Time: \(output.time) ms")
    }

    print(String(repeating: "-", count: 50))
}

public func measureTime<T>(_ block: () -> T) -> (result: T, time: Double) {
    let startTime = DispatchTime.now()
    let result = block()
    let endTime = DispatchTime.now()
    let elapsed = endTime.uptimeNanoseconds - startTime.uptimeNanoseconds
    return (result, Double(elapsed) / 1_000_000)
}
