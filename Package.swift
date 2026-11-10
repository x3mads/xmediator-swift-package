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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediator/XMediator-1.179.0.zip",
            checksum: "b382247fbc35da4eb14333196f514e81dc7d54cca329a5164c24f00c1cdd6151"
        ),
        .binaryTarget(
            name: "XMediatorSQLite",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorSQLite/XMediatorSQLite-0.14.1.2.zip",
            checksum: "d5baaf7f05928d32ae360a105e1733f57ecabdc8e2e37ca98ce8763b038ec762"
        ),
    ]
)
