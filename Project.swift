import ProjectDescription

let project = Project(
    name: "Temp",
    targets: [
        .target(
            name: "Temp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Temp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Temp/Sources/**"],
            resources: ["Temp/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TempTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TempTests",
            infoPlist: .default,
            sources: ["Temp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Temp")]
        ),
    ]
)
