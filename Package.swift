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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediator/XMediator-1.176.0.zip",
            checksum: "8254b936ad438be530c2b7af48e73b45587321decb24ab8382a5b289d3edc6f6"
        ),
        .binaryTarget(
            name: "XMediatorSQLite",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorSQLite/XMediatorSQLite-0.14.1.2.zip",
            checksum: "d5baaf7f05928d32ae360a105e1733f57ecabdc8e2e37ca98ce8763b038ec762"
        ),
    ]
)
