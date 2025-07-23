Pod::Spec.new do |spec|
  spec.name         = "swift-collections"
  spec.version      = "1.2.0"
  spec.summary      = "Commonly used data structures for Swift"
  spec.description  = <<-DESC
    Swift Collections is an open-source package of data structure implementations for the Swift programming language.
    
    The package provides:
    - BitSet and BitArray, dynamic bit collections
    - Deque, a double-ended queue backed by a ring buffer
    - Heap, a min-max heap backed by an array
    - OrderedSet and OrderedDictionary, ordered variants of Set and Dictionary
    - TreeSet and TreeDictionary, persistent hashed collections
  DESC
  
  spec.homepage     = "https://github.com/NSCodeRover/swift-collections"
  spec.license      = { :type => "Apache-2.0", :file => "LICENSE.txt" }
  spec.author       = { "Apple Inc." => "swift-dev@swift.org" }
  spec.source       = { :git => "https://github.com/NSCodeRover/swift-collections.git", :branch => "main" }
  
  spec.swift_version = "5.10.0"
  spec.ios.deployment_target = "17.0"
  spec.macos.deployment_target = "10.15"
  
  # Include all source files in a single module
  spec.source_files = [
    "Sources/Collections/**/*.swift",
    "Sources/BitCollections/**/*.swift",
    "Sources/DequeModule/**/*.swift",
    "Sources/HashTreeCollections/**/*.swift",
    "Sources/HeapModule/**/*.swift",
    "Sources/OrderedCollections/**/*.swift",
    "Sources/RopeModule/**/*.swift",
    "Sources/InternalCollectionsUtilities/**/*.swift"
  ]
  
  spec.exclude_files = [
    "Sources/BitCollections/CMakeLists.txt",
    "Sources/DequeModule/CMakeLists.txt",
    "Sources/HashTreeCollections/CMakeLists.txt",
    "Sources/HeapModule/CMakeLists.txt",
    "Sources/OrderedCollections/CMakeLists.txt",
    "Sources/RopeModule/CMakeLists.txt",
    "Sources/InternalCollectionsUtilities/CMakeLists.txt",
    "Sources/InternalCollectionsUtilities/Debugging.swift.gyb",
    "Sources/InternalCollectionsUtilities/Descriptions.swift.gyb",
    "Sources/InternalCollectionsUtilities/IntegerTricks/FixedWidthInteger+roundUpToPowerOfTwo.swift.gyb",
    "Sources/InternalCollectionsUtilities/IntegerTricks/Integer rank.swift.gyb",
    "Sources/InternalCollectionsUtilities/IntegerTricks/UInt+first and last set bit.swift.gyb",
    "Sources/InternalCollectionsUtilities/IntegerTricks/UInt+reversed.swift.gyb",
    "Sources/InternalCollectionsUtilities/RandomAccessCollection+Offsets.swift.gyb",
    "Sources/InternalCollectionsUtilities/UnsafeBitSet/_UnsafeBitSet+Index.swift.gyb",
    "Sources/InternalCollectionsUtilities/UnsafeBitSet/_UnsafeBitSet+_Word.swift.gyb",
    "Sources/InternalCollectionsUtilities/UnsafeBitSet/_UnsafeBitSet.swift.gyb",
    "Sources/InternalCollectionsUtilities/UnsafeBufferPointer+Extras.swift.gyb",
    "Sources/InternalCollectionsUtilities/UnsafeMutableBufferPointer+Extras.swift.gyb"
  ]
  
  # Compiler flags
  spec.pod_target_xcconfig = {
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING'
  }
end 