// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExpoFpCrowdConnected",
    platforms: [.iOS(.v14)],

    products: [
        .library(
            name: "ExpoFpCrowdConnected",
            targets: ["ExpoFpCrowdConnectedTarget"]),
    ],
    dependencies: [
    	.package(url: "https://github.com/expofp/expofp-common-ios-spm", exact: "4.9.1"),

        .package(url: "https://github.com/crowdconnected/crowdconnected-shared-ios", exact: "1.6.7"),
        .package(url: "https://github.com/crowdconnected/crowdconnected-core-ios", exact: "1.6.7"),
        //.package(url: "https://github.com/crowdconnected/crowdconnected-core-bluetooth-ios", exact: "1.6.7"),
        .package(url: "https://github.com/crowdconnected/crowdconnected-ips-ios", exact: "1.6.7"),
        .package(url: "https://github.com/crowdconnected/crowdconnected-geo-ios", exact: "1.6.7"),

    ],
    targets: [
        .target(
            name: "ExpoFpCrowdConnectedTarget",
            dependencies: [
                .product(name: "ExpoFpCommon", package: "expofp-common-ios-spm"),

                .product(name: "CrowdConnectedShared", package: "crowdconnected-shared-ios"),
                .product(name: "CrowdConnectedCore", package: "crowdconnected-core-ios"),
                //.product(name: "CrowdConnectedCoreBluetooth", package: "crowdconnected-core-bluetooth-ios"),
		        .product(name: "CrowdConnectedIPS", package: "crowdconnected-ips-ios"),
		        .product(name: "CrowdConnectedGeo", package: "crowdconnected-geo-ios"),
                .target(name: "ExpoFpCrowdConnected")
            
            ], 
            path: "ExpoFpCrowdConnectedTarget",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        ),
        .binaryTarget(name: "ExpoFpCrowdConnected",
                      path: "ExpoFpCrowdConnected.xcframework"
                     ),

    ],
    swiftLanguageVersions: [.v5]
)
