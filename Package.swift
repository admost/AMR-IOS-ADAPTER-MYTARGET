// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterMytarget",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AMRAdapterMytarget",
            targets: ["AMRAdapterMytarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.85"),
        .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm.git", .exact("5.41.0"))
    ],
    targets: [
        .target(
            name: "AMRAdapterMytarget",
            dependencies: [
                "AMRAdapterMytargetLib",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK"),
                .product(name: "MyTargetSDK", package: "mytarget-ios-spm")
            ],
            path: "AMRAdapterMytarget",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterMytargetLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-MYTARGET/releases/download/5.41.0/AMRAdapterMytarget.xcframework.zip",
            checksum: "c0e812b2b06c079a23879bc9a232f88ffbfa5e325602a6cfc568daa8517de4b5"
        )
    ]
)
