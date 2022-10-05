#!/bin/bash
cmake -Sios -G Xcode ./ios -B bin/ios_x86_64 -DPLATFORM=SIMULATOR64 -DCMAKE_TOOLCHAIN_FILE=ios.toolchain.cmake
cmake --build ./bin/ios_x86_64
cmake -Sios -G Xcode ./ios -B bin/ios_arm64 -DPLATFORM=OS64 -DCMAKE_TOOLCHAIN_FILE=ios.toolchain.cmake
cmake --build ./bin/ios_arm64
xcodebuild -create-xcframework \
    -library bin/ios_arm64/Debug-iphoneos/libshogi686micro.a -headers ../include \
    -library bin/ios_x86_64/Debug-iphonesimulator/libshogi686micro.a -headers ../include \
    -output libshogi686micro.xcframework
