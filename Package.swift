// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMap",
    products: [
        .library(
            name: "YandexMap",
            targets: ["YandexMap"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "YandexMap",
            dependencies: ["YandexMapsMobile"],
            linkerSettings: [
                .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.7.0-lite.framework.zip",
            checksum: "e618e15c0b4187e6ab4f3a89ff7cbf166a3800458c54487a7a0e883be693f362"
        )
    ]
)
