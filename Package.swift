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
        .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm.git", .exact("5.45.0"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-MYTARGET/releases/download/5.45.0/AMRAdapterMytarget.xcframework.zip",
            checksum: "0c857f913856c188a4d8c3ee1440dfeea75b8fd038a4b674c208bde495a6846b"
        )
    ]
)
