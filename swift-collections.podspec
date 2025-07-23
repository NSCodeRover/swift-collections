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
  
  # Main Collections module (includes all other modules)
  spec.subspec "Collections" do |collections|
    collections.source_files = "Sources/Collections/**/*.swift"
    collections.dependency "swift-collections/BitCollections"
    collections.dependency "swift-collections/DequeModule"
    collections.dependency "swift-collections/HashTreeCollections"
    collections.dependency "swift-collections/HeapModule"
    collections.dependency "swift-collections/OrderedCollections"
    collections.dependency "swift-collections/RopeModule"
    collections.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # BitCollections module
  spec.subspec "BitCollections" do |bitcollections|
    bitcollections.source_files = "Sources/BitCollections/**/*.swift"
    bitcollections.exclude_files = "Sources/BitCollections/CMakeLists.txt"
    bitcollections.dependency "swift-collections/InternalCollectionsUtilities"
    bitcollections.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # DequeModule
  spec.subspec "DequeModule" do |deque|
    deque.source_files = "Sources/DequeModule/**/*.swift"
    deque.exclude_files = "Sources/DequeModule/CMakeLists.txt"
    deque.dependency "swift-collections/InternalCollectionsUtilities"
    deque.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # HashTreeCollections module
  spec.subspec "HashTreeCollections" do |hashtree|
    hashtree.source_files = "Sources/HashTreeCollections/**/*.swift"
    hashtree.exclude_files = "Sources/HashTreeCollections/CMakeLists.txt"
    hashtree.dependency "swift-collections/InternalCollectionsUtilities"
    hashtree.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # HeapModule
  spec.subspec "HeapModule" do |heap|
    heap.source_files = "Sources/HeapModule/**/*.swift"
    heap.exclude_files = "Sources/HeapModule/CMakeLists.txt"
    heap.dependency "swift-collections/InternalCollectionsUtilities"
    heap.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # OrderedCollections module
  spec.subspec "OrderedCollections" do |ordered|
    ordered.source_files = "Sources/OrderedCollections/**/*.swift"
    ordered.exclude_files = "Sources/OrderedCollections/CMakeLists.txt"
    ordered.dependency "swift-collections/InternalCollectionsUtilities"
    ordered.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # RopeModule (internal)
  spec.subspec "RopeModule" do |rope|
    rope.source_files = "Sources/RopeModule/**/*.swift"
    rope.exclude_files = "Sources/RopeModule/CMakeLists.txt"
    rope.dependency "swift-collections/InternalCollectionsUtilities"
    rope.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # Internal utilities (hidden dependency)
  spec.subspec "InternalCollectionsUtilities" do |internal|
    internal.source_files = "Sources/InternalCollectionsUtilities/**/*.swift"
    internal.exclude_files = [
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
    internal.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
      'SWIFT_VERSION' => '5.10.0'
    }
  end
  
  # Default to Collections module
  spec.default_subspecs = "Collections"
  
  # Compiler flags
  spec.pod_target_xcconfig = {
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING',
    'SWIFT_VERSION' => '5.10.0'
  }
end 