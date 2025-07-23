# Swift Collections for CocoaPods

This repository provides CocoaPods support for Apple's Swift Collections package, following the approach pioneered by [liamnichols/swift-collections-specs](https://github.com/liamnichols/swift-collections-specs).

## Overview

The Swift Collections package is officially available only through Swift Package Manager. This repository provides individual CocoaPods pods for each module, making it accessible to projects that use CocoaPods for dependency management.

## Available Pods

### ✅ Published Pods

- **SwiftCollections-Deque** - Double-ended queue backed by a ring buffer
  - Pod: `SwiftCollections-Deque`
  - URL: https://cocoapods.org/pods/SwiftCollections-Deque
  - Version: 1.2.0

### 🚧 In Development

- **SwiftCollections-OrderedCollections** - OrderedSet and OrderedDictionary
- **SwiftCollections-Collections** - Complete package with all modules

## Installation

### Using CocoaPods

Add the desired pod to your `Podfile`:

```ruby
# For Deque functionality
pod 'SwiftCollections-Deque'

# For OrderedCollections (when available)
# pod 'SwiftCollections-OrderedCollections'

# For complete package (when available)
# pod 'SwiftCollections-Collections'
```

Then run:
```bash
pod install
```

### Alternative: Custom Specs Repository

Following the approach from [liamnichols/swift-collections-specs](https://github.com/liamnichols/swift-collections-specs), you can also use a custom specs repository:

```ruby
source 'https://github.com/liamnichols/swift-collections-specs'

target 'YourApp' do
  pod 'Collections', '~> 1.0.3'
  pod 'OrderedCollections', '~> 1.0.3'
  pod 'DequeModule', '~> 1.0.3'
end
```

## Usage

### Deque

```swift
import SwiftCollections_Deque

var deque = Deque<Int>()
deque.append(1)
deque.prepend(0)
deque.append(2)

print(deque.first) // Optional(0)
print(deque.last)  // Optional(2)

let first = deque.removeFirst() // 0
let last = deque.removeLast()   // 2
```

## Technical Approach

This implementation follows the pattern established by [liamnichols/swift-collections-specs](https://github.com/liamnichols/swift-collections-specs):

1. **Individual Pods**: Each module is published as a separate pod to avoid dependency conflicts
2. **Unique Naming**: Pod names are prefixed with "SwiftCollections-" to avoid conflicts with existing pods
3. **Internal Dependencies**: Each pod includes the necessary InternalCollectionsUtilities files
4. **Compilation Conditions**: Proper Swift compilation conditions are set for testing

## Challenges and Solutions

### Challenge: Complex Internal Dependencies
The original Swift Collections package has intricate internal module dependencies that are difficult to resolve in CocoaPods.

**Solution**: Each pod includes the necessary InternalCollectionsUtilities files directly, avoiding cross-module dependencies.

### Challenge: Swift Version Compatibility
Some features require newer Swift versions that may not be available in all environments.

**Solution**: Fixed syntax issues and removed unsupported features like `nonisolated(unsafe)`.

### Challenge: Name Conflicts
Many pod names are already taken in the CocoaPods registry.

**Solution**: Used unique prefixed names like "SwiftCollections-Deque".

## Development Status

- ✅ **SwiftCollections-Deque**: Published and working
- 🚧 **SwiftCollections-OrderedCollections**: In development (compilation issues)
- 🚧 **SwiftCollections-Collections**: In development (dependency issues)

## Contributing

This project follows the same approach as [liamnichols/swift-collections-specs](https://github.com/liamnichols/swift-collections-specs). If you encounter issues:

1. For CocoaPods-specific issues: Create an issue in this repository
2. For Swift Collections package issues: Create an issue in the [official repository](https://github.com/apple/swift-collections)

## References

- [Official Swift Collections Package](https://github.com/apple/swift-collections)
- [liamnichols/swift-collections-specs](https://github.com/liamnichols/swift-collections-specs) - Original CocoaPods implementation
- [SwiftCollections-Deque on CocoaPods](https://cocoapods.org/pods/SwiftCollections-Deque)

## License

This project is licensed under the Apache License 2.0, same as the original Swift Collections package. 