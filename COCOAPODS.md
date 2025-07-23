# Swift Collections for CocoaPods

This repository provides a CocoaPods-compatible version of the Swift Collections package, forked from [Apple's swift-collections](https://github.com/apple/swift-collections).

## Installation

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'swift-collections', :git => 'https://github.com/NSCodeRover/swift-collections.git', :tag => '1.2.0'
```

Then run:
```bash
pod install
```

### Using Specific Modules

If you only need specific modules, you can import them individually:

```ruby
# Only BitCollections (BitSet, BitArray)
pod 'swift-collections/BitCollections'

# Only DequeModule
pod 'swift-collections/DequeModule'

# Only HashTreeCollections (TreeSet, TreeDictionary)
pod 'swift-collections/HashTreeCollections'

# Only HeapModule
pod 'swift-collections/HeapModule'

# Only OrderedCollections (OrderedSet, OrderedDictionary)
pod 'swift-collections/OrderedCollections'
```

## Usage

### Import the Collections module

```swift
import Collections

// Use all collection types
var deque: Deque<String> = ["Ted", "Rebecca"]
deque.prepend("Keeley")
deque.append("Nathan")
```

### Import specific modules

```swift
import BitCollections
import DequeModule
import HashTreeCollections
import HeapModule
import OrderedCollections

// Use specific collection types
var bitSet: BitSet = [1, 3, 5, 7, 9]
var orderedSet: OrderedSet<String> = ["apple", "banana", "cherry"]
var heap: Heap<Int> = [3, 1, 4, 1, 5, 9, 2, 6]
```

## Available Collections

### BitCollections
- **BitSet**: A dynamic bit set with efficient set operations
- **BitArray**: A dynamic bit array with efficient bitwise operations

### DequeModule
- **Deque**: A double-ended queue backed by a ring buffer

### HashTreeCollections
- **TreeSet**: A persistent hashed set implementing CHAMP
- **TreeDictionary**: A persistent hashed dictionary implementing CHAMP

### HeapModule
- **Heap**: A min-max heap backed by an array, suitable for priority queues

### OrderedCollections
- **OrderedSet**: An ordered variant of Set with well-defined item order
- **OrderedDictionary**: An ordered variant of Dictionary

## Requirements

- iOS 17.0+
- macOS 10.15+
- tvOS 17.0+
- watchOS 10.0+
- Swift 5.10.0+

## Example

See the `Example/` directory for a complete iOS project demonstrating usage of all collection types.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE.txt](LICENSE.txt) file for details.

## Original Project

This is a fork of [Apple's swift-collections](https://github.com/apple/swift-collections) project, adapted for CocoaPods distribution. The original project is maintained by Apple and the Swift community. 