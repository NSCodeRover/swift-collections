Pod::Spec.new do |spec|
  spec.name         = "SwiftCollections-Deque"
  spec.version      = "1.2.0"
  spec.summary      = "Swift Collections - Deque module"
  spec.description  = <<-DESC
    Swift Collections is an open-source package of data structure implementations for the Swift programming language.
    
    This pod provides the Deque module which implements a double-ended queue backed by a ring buffer.
  DESC
  
  spec.homepage     = "https://github.com/NSCodeRover/swift-collections"
  spec.license      = { :type => "Apache-2.0", :file => "LICENSE.txt" }
  spec.author       = { "Apple Inc." => "swift-dev@swift.org" }
  spec.source       = { :git => "https://github.com/NSCodeRover/swift-collections.git", :branch => "main" }
  
  spec.swift_version = "5.10.0"
  spec.ios.deployment_target = "17.0"
  spec.macos.deployment_target = "10.15"
  
  # DequeModule source files
  spec.source_files = [
    "Sources/DequeModule/**/*.swift",
    "Sources/InternalCollectionsUtilities/**/*.swift"
  ]
  
  spec.exclude_files = [
    "Sources/DequeModule/CMakeLists.txt",
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