// swift-tools-version:5.0
///
///  Package.swift
///
///  Copyright 2016 Tony Stone
///
///  Licensed under the Apache License, Version 2.0 (the "License");
///  you may not use this file except in compliance with the License.
///  You may obtain a copy of the License at
///
///  http://www.apache.org/licenses/LICENSE-2.0
///
///  Unless required by applicable law or agreed to in writing, software
///  distributed under the License is distributed on an "AS IS" BASIS,
///  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
///  See the License for the specific language governing permissions and
///  limitations under the License.
///
///  Created by Tony Stone on 10/1/16.
///
import PackageDescription

let package = Package(
    name: "TraceLog",
    targets: [
        /// Module targets
        .target(name: "TraceLog",     dependencies: [],             path: "Sources/TraceLog"),
        .target(name: "TraceLogObjC", dependencies: ["TraceLog"],   path: "Sources/TraceLogObjC"),

        /// Tests
        .testTarget(name: "TraceLogTests",     dependencies: ["TraceLog"],     path: "Tests/TraceLogTests"),
        .testTarget(name: "TraceLogObjCTests", dependencies: ["TraceLogObjC"], path: "Tests/TraceLogObjCTests")
    ],
    swiftLanguageVersions: [.version("5")]
)

/// Main products section
package.products.append(.library(name: "TraceLog", type: .dynamic, targets: ["TraceLog", "TraceLogObjC"]))
