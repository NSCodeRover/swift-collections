#!/bin/bash

# Validate the podspec file
echo "Validating swift-collections.podspec..."

# Check if podspec exists
if [ ! -f "swift-collections.podspec" ]; then
    echo "❌ swift-collections.podspec not found"
    exit 1
fi

# Validate podspec syntax
pod spec lint swift-collections.podspec --allow-warnings --verbose

if [ $? -eq 0 ]; then
    echo "✅ Podspec validation successful"
else
    echo "❌ Podspec validation failed"
    exit 1
fi

echo "🎉 All validations passed!" 