# Swift Collections Example

This is an example iOS project demonstrating how to use the Swift Collections library via CocoaPods.

## Setup

1. Make sure you have CocoaPods installed:
   ```bash
   sudo gem install cocoapods
   ```

2. Install the dependencies:
   ```bash
   cd Example
   pod install
   ```

3. Open the workspace:
   ```bash
   open SwiftCollectionsExample.xcworkspace
   ```

## What's Included

The example demonstrates usage of all major collection types:

- **Deque**: Double-ended queue operations
- **OrderedSet**: Ordered set with insertion order preservation
- **OrderedDictionary**: Ordered dictionary with key order preservation
- **BitSet**: Efficient bit set operations
- **Heap**: Min-max heap for priority queue operations
- **TreeSet**: Persistent hashed set

## Running the Example

1. Build and run the project in Xcode
2. Check the console output to see the demonstration of each collection type
3. The app will print examples of various operations on each collection

## Code Examples

The main demonstration code is in `ViewController.swift`. Each collection type has its own demonstration method showing common operations.

## Requirements

- iOS 17.0+
- Xcode 15.0+
- CocoaPods 