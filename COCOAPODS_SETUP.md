# Swift Collections CocoaPods Setup

This document describes the CocoaPods setup for the swift-collections project.

## Files Added/Modified

### New Files Created:

1. **`swift-collections.podspec`** - Main CocoaPods specification file
   - Defines all modules as subspecs
   - Sets up proper dependencies between modules
   - Configures platform requirements and Swift version

2. **`COCOAPODS.md`** - Detailed CocoaPods usage documentation
   - Installation instructions
   - Module-specific usage examples
   - Requirements and compatibility information

3. **`Example/`** - Complete example iOS project
   - `Podfile` - Example CocoaPods configuration
   - `SwiftCollectionsExample/` - iOS app demonstrating all collection types
   - `README.md` - Setup instructions for the example

4. **`validate_podspec.sh`** - Validation script
   - Tests the podspec file for syntax and configuration errors

### Modified Files:

1. **`README.md`** - Added CocoaPods installation section
   - Includes both SwiftPM and CocoaPods installation methods
   - References the detailed CocoaPods documentation

## Module Structure

The podspec defines the following subspecs:

- **Collections** (default) - Includes all other modules
- **BitCollections** - BitSet and BitArray
- **DequeModule** - Deque implementation
- **HashTreeCollections** - TreeSet and TreeDictionary
- **HeapModule** - Heap implementation
- **OrderedCollections** - OrderedSet and OrderedDictionary
- **RopeModule** - Internal rope data structure
- **InternalCollectionsUtilities** - Internal utilities (hidden dependency)

## Usage Examples

### Basic Installation:
```ruby
pod 'swift-collections', :git => 'https://github.com/NSCodeRover/swift-collections.git', :tag => '1.2.0'
```

### Module-Specific Installation:
```ruby
pod 'swift-collections/BitCollections'
pod 'swift-collections/DequeModule'
pod 'swift-collections/OrderedCollections'
```

### Swift Usage:
```swift
import Collections  // All modules
// or
import BitCollections  // Specific module
```

## Requirements

- iOS 17.0+
- macOS 10.15+
- tvOS 17.0+
- watchOS 10.0+
- Swift 5.10.0+

## Validation

Run the validation script to test the podspec:
```bash
./validate_podspec.sh
```

## Testing

To test the CocoaPods setup:

1. Navigate to the Example directory
2. Run `pod install`
3. Open `SwiftCollectionsExample.xcworkspace`
4. Build and run the project

The example app demonstrates usage of all collection types and will print examples to the console.

## Notes

- The podspec maintains the same modular structure as the original Swift Package Manager version
- All internal dependencies are properly configured
- The example project shows real-world usage patterns
- Documentation is comprehensive and follows CocoaPods best practices 