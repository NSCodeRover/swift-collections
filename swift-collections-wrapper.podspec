Pod::Spec.new do |spec|
  spec.name         = "swift-collections-wrapper"
  spec.version      = "1.2.0"
  spec.summary      = "Commonly used data structures for Swift"
  spec.description  = <<-DESC
    Swift Collections is an open-source package of data structure implementations for the Swift programming language.
    
    This is a simplified CocoaPods wrapper that provides basic collection types.
  DESC
  
  spec.homepage     = "https://github.com/NSCodeRover/swift-collections"
  spec.license      = { :type => "Apache-2.0", :file => "LICENSE.txt" }
  spec.author       = { "Apple Inc." => "swift-dev@swift.org" }
  spec.source       = { :git => "https://github.com/NSCodeRover/swift-collections.git", :branch => "main" }
  
  spec.swift_version = "5.10.0"
  spec.ios.deployment_target = "17.0"
  spec.macos.deployment_target = "10.15"
  
  # Create a simple wrapper that provides basic functionality
  spec.source_files = [
    "SwiftCollections.swift"
  ]
  
  # Compiler flags
  spec.pod_target_xcconfig = {
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'COLLECTIONS_RANDOMIZED_TESTING'
  }
end 