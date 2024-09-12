// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NoomAmityUIKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NoomAmityUIKit",
            targets: ["Realm", "RealmSwift", "AmitySDK", "AmityUIKit4"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/Realm.xcframework.zip",
            checksum: "6a5572a8798c32cc8f14918703b4e19bcd32351bfeac6d3b43191739726eaa7b"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/RealmSwift.xcframework.zip",
            checksum: "8fb529cf5322f15015d581f149bf4c926808bc7739173c2a6f7fd84dd33a9ec6"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/AmitySDK.xcframework.zip",
            checksum: "c1d56b5c7328cfb6c64a7e3893a2f57a22ce54909a60d0963111e28f1c10b8d3"
        ),
        .target(
            name: "AmityUIKit4",
            dependencies: [
                "Realm",
                "RealmSwift",
                "AmitySDK"
            ],
            path: "UpstraUIKit/AmityUIKit4/AmityUIKit4"
        )
    ]
)

//let package = Package(
//    name: "NoomAmityUIKit4",
//    defaultLocalization: "en",
//    platforms: [
//        .iOS(.v15)
//    ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "NoomAmityUIKit4",
//            targets: ["NoomAmityUIKit4"]
//        )
//    ],
//    dependencies: [
//
////        .binaryTarget(
////            name: "AmitySDK",
////            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/AmitySDK.xcframework.zip",
////            checksum: "c1d56b5c7328cfb6c64a7e3893a2f57a22ce54909a60d0963111e28f1c10b8d3"
////        ),
////        .package(url: "https://github.com/AmityCo/Amity-Social-Cloud-UIKit-iOS-SwiftPM.git", exact: "4.0.0-beta19")
////        .package(url: "https://github.com/AmityCo/Amity-Social-Cloud-SDK-iOS-SwiftPM.git", exact: "6.18.0"),
//    ],
//    targets: [
//        .binaryTarget(
//            name: "Realm",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/Realm.xcframework.zip",
//            checksum: "6a5572a8798c32cc8f14918703b4e19bcd32351bfeac6d3b43191739726eaa7b"
//        ),
//        .binaryTarget(
//            name: "RealmSwift",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/RealmSwift.xcframework.zip",
//            checksum: "8fb529cf5322f15015d581f149bf4c926808bc7739173c2a6f7fd84dd33a9ec6"
//        ),
//        .binaryTarget(
//            name: "AmitySDK",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/AmitySDK.xcframework.zip",
//            checksum: "c1d56b5c7328cfb6c64a7e3893a2f57a22ce54909a60d0963111e28f1c10b8d3"
//        ),
//        .target(
//            name: "NoomAmityUIKit4",
//            dependencies: [
//                "Realm",
//                "RealmSwift",
//                "AmitySDK"
////                .product(name: "AmityUIKit", package: "Amity-Social-Cloud-UIKit-iOS-SwiftPM")
////                "AmitySDK"
////                .product(name: "AmitySDK", package: "Amity-Social-Cloud-UIKit-iOS-SwiftPM")
////                .product(name: "SnapKit", package: "SnapKit"),
////                .product(name: "ComposableArchitecture", pa ckage: "swift-composable-architecture"),
//            ],
//            path: "UpstraUIKit/AmityUIKit4/AmityUIKit4"
////            resources: [
////                .process("Localization/en.lproj/AmityLocalizable.strings"),
////                .process("Localization/de.lproj/AmityLocalizable.strings"),
////                .process("Localization/es.lproj/AmityLocalizable.strings")
////            ]
//        )
//    ]
//)
//let package = Package(
//    name: "AmityUIKit",
//    products: [
//        .library(
//            name: "AmityUIKit",
//            targets: ["AmityUIKit", "AmitySDK", "Realm", "RealmSwift", "AmityUIKit4"])
//    ],
//    targets: [
//        .binaryTarget(
//            name: "AmityUIKit",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/AmityUIKit.xcframework.zip",
//            checksum: "b94201a717f4649a9facaf3e1716f0d5bfbeacfe59af609c185b234d1a77a4e5"
//        ),
//        .binaryTarget(
//            name: "AmitySDK",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/AmitySDK.xcframework.zip",
//            checksum: "c1d56b5c7328cfb6c64a7e3893a2f57a22ce54909a60d0963111e28f1c10b8d3"
//        ),
//        .binaryTarget(
//            name: "Realm",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/Realm.xcframework.zip",
//            checksum: "6a5572a8798c32cc8f14918703b4e19bcd32351bfeac6d3b43191739726eaa7b"
//        ),
//        .binaryTarget(
//            name: "RealmSwift",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/RealmSwift.xcframework.zip",
//            checksum: "8fb529cf5322f15015d581f149bf4c926808bc7739173c2a6f7fd84dd33a9ec6"
//        ),
//        .binaryTarget(
//            name: "AmityUIKit4",
//            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/4.0.0-beta19/AmityUIKit4.xcframework.zip",
//            checksum: "1e29419527f6e72413fb7061fa8304ac2727d81206bb99431a1265b05766f642"
//        )
//    ]
//)
