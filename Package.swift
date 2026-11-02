// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediator",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediator", targets: ["XMediatorTarget"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "XMediatorTarget",
            dependencies: [
                .target(name: "XMediator"),
                .target(name: "XMediatorSQLite"),
            ],
            path: "XMediatorTarget",
            linkerSettings: [
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AdSupport"),
                .linkedFramework("Network"),
                .linkedFramework("OSLog"),
                .linkedLibrary("z"),
            ]
        ),
        .binaryTarget(
            name: "XMediator",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediator/XMediator-1.178.0.zip",
            checksum: "83c5e4cbc7aaa9e6a401dd68186aa6f183124d1cf5ffe172b17bb6e6a8da1ad2"
        ),
        .binaryTarget(
            name: "XMediatorSQLite",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorSQLite/XMediatorSQLite-0.14.1.2.zip",
            checksum: "d5baaf7f05928d32ae360a105e1733f57ecabdc8e2e37ca98ce8763b038ec762"
        ),
    ]
)
