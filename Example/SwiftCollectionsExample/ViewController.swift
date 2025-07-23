import UIKit
import Collections

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Example usage of various collections
        demonstrateDeque()
        demonstrateOrderedSet()
        demonstrateOrderedDictionary()
        demonstrateBitSet()
        demonstrateHeap()
        demonstrateTreeSet()
    }
    
    func demonstrateDeque() {
        print("=== Deque Example ===")
        var deque: Deque<String> = ["Ted", "Rebecca"]
        deque.prepend("Keeley")
        deque.append("Nathan")
        print("Deque: \(deque)")
        print("First: \(deque.first ?? "nil")")
        print("Last: \(deque.last ?? "nil")")
        print()
    }
    
    func demonstrateOrderedSet() {
        print("=== OrderedSet Example ===")
        var orderedSet: OrderedSet<String> = ["apple", "banana", "cherry"]
        orderedSet.append("date")
        orderedSet.insert("apple", at: 0) // Moves to front
        print("OrderedSet: \(orderedSet)")
        print("Index of 'banana': \(orderedSet.firstIndex(of: "banana") ?? -1)")
        print()
    }
    
    func demonstrateOrderedDictionary() {
        print("=== OrderedDictionary Example ===")
        var orderedDict: OrderedDictionary<String, Int> = [
            "first": 1,
            "second": 2,
            "third": 3
        ]
        orderedDict["fourth"] = 4
        orderedDict.updateValue(5, forKey: "first", insertingAt: 0)
        print("OrderedDictionary: \(orderedDict)")
        print("Keys in order: \(Array(orderedDict.keys))")
        print()
    }
    
    func demonstrateBitSet() {
        print("=== BitSet Example ===")
        var bitSet: BitSet = [1, 3, 5, 7, 9]
        bitSet.insert(2)
        bitSet.remove(3)
        print("BitSet: \(bitSet)")
        print("Contains 5: \(bitSet.contains(5))")
        print("Count: \(bitSet.count)")
        print()
    }
    
    func demonstrateHeap() {
        print("=== Heap Example ===")
        var heap: Heap<Int> = [3, 1, 4, 1, 5, 9, 2, 6]
        print("Original heap: \(heap)")
        print("Min: \(heap.min() ?? -1)")
        print("Max: \(heap.max() ?? -1)")
        
        heap.insert(0)
        print("After inserting 0: \(heap)")
        print("Removed min: \(heap.removeMin() ?? -1)")
        print("Removed max: \(heap.removeMax() ?? -1)")
        print("Final heap: \(heap)")
        print()
    }
    
    func demonstrateTreeSet() {
        print("=== TreeSet Example ===")
        var treeSet: TreeSet<String> = ["red", "green", "blue"]
        treeSet.insert("yellow")
        treeSet.remove("green")
        print("TreeSet: \(treeSet)")
        print("Contains 'blue': \(treeSet.contains("blue"))")
        print("Count: \(treeSet.count)")
        print()
    }
} 