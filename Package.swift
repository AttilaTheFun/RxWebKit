// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RxWebKit",
    platforms: [
        .iOS(.v8), .tvOS(.v9), .macOS(.v10_11), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxWebKit", targets: ["RxWebKit"]),
    ],
    dependencies: [
	.package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(name: "RxWebKit", dependencies: ["RxSwift", "RxCocoa"], path: "RxWebKit/Sources"),
    ],
    swiftLanguageVersions: [.v5]
)
