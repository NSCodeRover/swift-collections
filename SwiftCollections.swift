//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Collections open source project
//
// Copyright (c) 2021 - 2024 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

import Foundation

/// A simple wrapper for Swift Collections functionality
public struct Collections {
    public init() {}
    
    /// Returns a welcome message
    public static func welcome() -> String {
        return "Welcome to Swift Collections!"
    }
}

/// A simple Deque implementation
public struct Deque<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public var count: Int { storage.count }
    public var isEmpty: Bool { storage.isEmpty }
    
    public mutating func append(_ element: Element) {
        storage.append(element)
    }
    
    public mutating func prepend(_ element: Element) {
        storage.insert(element, at: 0)
    }
    
    public mutating func removeFirst() -> Element? {
        return storage.isEmpty ? nil : storage.removeFirst()
    }
    
    public mutating func removeLast() -> Element? {
        return storage.isEmpty ? nil : storage.removeLast()
    }
    
    public func first() -> Element? {
        return storage.first
    }
    
    public func last() -> Element? {
        return storage.last
    }
}

/// A simple Heap implementation
public struct Heap<Element: Comparable> {
    private var storage: [Element] = []
    
    public init() {}
    
    public var count: Int { storage.count }
    public var isEmpty: Bool { storage.isEmpty }
    
    public mutating func insert(_ element: Element) {
        storage.append(element)
        siftUp(from: storage.count - 1)
    }
    
    public mutating func removeMin() -> Element? {
        guard !storage.isEmpty else { return nil }
        
        let min = storage[0]
        storage[0] = storage.removeLast()
        
        if !storage.isEmpty {
            siftDown(from: 0)
        }
        
        return min
    }
    
    public func min() -> Element? {
        return storage.first
    }
    
    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = (child - 1) / 2
        
        while child > 0 && storage[child] < storage[parent] {
            storage.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }
    
    private mutating func siftDown(from index: Int) {
        var parent = index
        
        while true {
            let leftChild = 2 * parent + 1
            let rightChild = 2 * parent + 2
            var minChild = parent
            
            if leftChild < storage.count && storage[leftChild] < storage[minChild] {
                minChild = leftChild
            }
            
            if rightChild < storage.count && storage[rightChild] < storage[minChild] {
                minChild = rightChild
            }
            
            if minChild == parent {
                break
            }
            
            storage.swapAt(parent, minChild)
            parent = minChild
        }
    }
} 