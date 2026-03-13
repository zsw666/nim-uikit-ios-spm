// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright (c) 2022 NetEase, Inc. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import PackageDescription

func remoteBinary(_ name: String, url: String, checksum: String) -> Target {
    .binaryTarget(
        name: name,
        url: url,
        checksum: checksum
    )
}

let package = Package(
  name: "NIMUIKit",
  platforms: [
    .iOS(.v13),
  ],
  products: [
    .library(name: "NECoreKit", targets: ["NECoreKit", "NECoreKit_Deps"]),
    .library(name: "NECommonKit", targets: ["NECommonKit"]),
    .library(name: "NECoreIM2Kit", targets: ["NECoreIM2Kit", "NECoreIM2Kit_Deps"]),
    .library(name: "NECommonUIKit", targets: ["NECommonUIKit", "NECommonUIKit_Deps"]),
    .library(name: "NEChatKit", targets: ["NEChatKit", "NEChatKit_Deps"]),
    .library(name: "NEChatUIKit", targets: ["NEChatUIKit", "NEChatUIKit_Deps"]),
    .library(name: "NEContactUIKit", targets: ["NEContactUIKit", "NEContactUIKit_Deps"]),
    .library(name: "NEConversationUIKit", targets: ["NEConversationUIKit", "NEConversationUIKit_Deps"]),
    .library(name: "NELocalConversationUIKit", targets: ["NELocalConversationUIKit", "NELocalConversationUIKit_Deps"]),
    .library(name: "NETeamUIKit", targets: ["NETeamUIKit", "NETeamUIKit_Deps"]),
    .library(name: "NEMapKit", targets: ["NEMapKit", "NEMapKit_Deps"]),
    .library(name: "NEAISearchKit", targets: ["NEAISearchKit", "NEAISearchKit_Deps"]),
  ],
  dependencies: [
    .package(url: "https://github.com/netease-im/nimsdk-spm.git", from: "10.9.0"),
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
    .package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.5"),
    .package(url: "https://github.com/SDWebImage/SDWebImageWebPCoder.git", from: "0.8.0"),
    .package(url: "https://github.com/SDWebImage/SDWebImageSVGKitPlugin.git", from: "1.3.0"),
  ],
  targets: [
    // ============ Dependency Wrapper Targets ============
    .target(
      name: "NECoreKit_Deps",
      dependencies: [
        "YXAlog_iOS",
      ],
      path: "Sources/NECoreKit_Deps"
    ),
    .target(
      name: "NECoreIM2Kit_Deps",
      dependencies: [
        .product(name: "NIMSDK", package: "nimsdk-spm"),
      ],
      path: "Sources/NECoreIM2Kit_Deps"
    ),
    .target(
      name: "NECommonUIKit_Deps",
      dependencies: [
        .product(name: "SDWebImage", package: "SDWebImage"),
      ],
      path: "Sources/NECommonUIKit_Deps"
    ),
    .target(
      name: "NEChatKit_Deps",
      dependencies: [
        .product(name: "NIMSDK", package: "nimsdk-spm"),
      ],
      path: "Sources/NEChatKit_Deps"
    ),
    .target(
      name: "NEChatUIKit_Deps",
      dependencies: [
        .product(name: "MJRefresh", package: "MJRefresh"),
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NEChatUIKit_Deps"
    ),
    .target(
      name: "NEContactUIKit_Deps",
      dependencies: [
        .product(name: "MJRefresh", package: "MJRefresh"),
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NEContactUIKit_Deps"
    ),
    .target(
      name: "NEConversationUIKit_Deps",
      dependencies: [
        .product(name: "MJRefresh", package: "MJRefresh"),
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NEConversationUIKit_Deps"
    ),
    .target(
      name: "NELocalConversationUIKit_Deps",
      dependencies: [
        .product(name: "MJRefresh", package: "MJRefresh"),
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NELocalConversationUIKit_Deps"
    ),
    .target(
      name: "NETeamUIKit_Deps",
      dependencies: [
        .product(name: "MJRefresh", package: "MJRefresh"),
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NETeamUIKit_Deps"
    ),
    .target(
      name: "NEMapKit_Deps",
      dependencies: [
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NEMapKit_Deps"
    ),
    .target(
      name: "NEAISearchKit_Deps",
      dependencies: [
        .product(name: "MJRefresh", package: "MJRefresh"),
        .product(name: "SDWebImage", package: "SDWebImage"),
        .product(name: "SDWebImageWebPCoder", package: "SDWebImageWebPCoder"),
        .product(name: "SDWebImageSVGKitPlugin", package: "SDWebImageSVGKitPlugin"),
      ],
      path: "Sources/NEAISearchKit_Deps"
    ),

    // ============ Binary Targets ============
    remoteBinary("YXAlog_iOS",
      url: "https://yx-web-nosdn.netease.im/package/1759136924916/YXAlog_iOS.xcframework.zip?download=YXAlog_iOS.xcframework.zip",
      checksum: "e4ce7f4bbaf751497ef69dd5d890a913b103ad2b7b8616e270c8a09ce86dfc30"
    ),
    remoteBinary("NECoreKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/9.8.2/1773384514/NECoreKit_iOS_v9.8.2.framework.zip?download=NECoreKit_iOS_v9.8.2.framework.zip",
      checksum: "fabe6010db44ced36ab7e22d62ade8ff5c05d0ef7a61cfe1ba9c068be84b0164"
    ),
    remoteBinary("NECommonKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/9.7.7/1773373567/NECommonKit_iOS_v9.7.7.framework.zip?download=NECommonKit_iOS_v9.7.7.framework.zip",
      checksum: "e2c60149865c194a44516deac2a014c1a50190ab83e41745b09fbac0c0ec9ff3"
    ),
    remoteBinary("NECoreIM2Kit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/1.1.8/1773373622/NECoreIM2Kit_iOS_v1.1.8.framework.zip?download=NECoreIM2Kit_iOS_v1.1.8.framework.zip",
      checksum: "e760c56a58fb6aecda2acb99750ee5260648ccecc53f62334a6e70ffae38ea9b"
    ),
    remoteBinary("NECommonUIKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/9.8.4/1773373816/NECommonUIKit_iOS_v9.8.4.framework.zip?download=NECommonUIKit_iOS_v9.8.4.framework.zip",
      checksum: "6b6676d27d3b8d731a9d98aa6d17d05cf318ab2b088d8c2c1ecec2f215a3bac9"
    ),
    remoteBinary("NEChatKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773373891/NEChatKit_iOS_v10.9.11.framework.zip?download=NEChatKit_iOS_v10.9.11.framework.zip",
      checksum: "ddd6a8f599fc34422b306e42fce769c1c9fc9494d942466e85b26d5949de5e4b"
    ),
    remoteBinary("NEChatUIKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773374259/NEChatUIKit_iOS_v10.9.11.framework.zip?download=NEChatUIKit_iOS_v10.9.11.framework.zip",
      checksum: "1b18fa5e61588d3e37c1f4ba7e72657efce3a34763a76e15813958e7315ae4da"
    ),
    remoteBinary("NEContactUIKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773374524/NEContactUIKit_iOS_v10.9.11.framework.zip?download=NEContactUIKit_iOS_v10.9.11.framework.zip",
      checksum: "4d6ee7221dde4f346ba558c639a06f54e17fbe2207a3a56a7e0a2eb5883290ab"
    ),
    remoteBinary("NEConversationUIKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773374793/NEConversationUIKit_iOS_v10.9.11.framework.zip?download=NEConversationUIKit_iOS_v10.9.11.framework.zip",
      checksum: "6884e12379b1a7404c2ac0889224e0094f40cd6b3256dbd0469527ec3272162e"
    ),
    remoteBinary("NELocalConversationUIKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773375043/NELocalConversationUIKit_iOS_v10.9.11.framework.zip?download=NELocalConversationUIKit_iOS_v10.9.11.framework.zip",
      checksum: "c11728e8e0d4ad2763befb0de225cc3056881e4c590dc0f11465f85d92f49aed"
    ),
    remoteBinary("NETeamUIKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773375451/NETeamUIKit_iOS_v10.9.11.framework.zip?download=NETeamUIKit_iOS_v10.9.11.framework.zip",
      checksum: "7c1ee124a38576baea5a5b86d356d027f79b7cfe2bbbe04da32409dc4cea73f3"
    ),
    remoteBinary("NEMapKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773382440/NEMapKit_iOS_v10.9.11.framework.zip?download=NEMapKit_iOS_v10.9.11.framework.zip",
      checksum: "f341f818ad54e95871df3a8bd2cd948acdfb3b8e0f160f90b12c6dd5cb4a560d"
    ),
    remoteBinary("NEAISearchKit",
      url: "https://yx-web-nosdn.netease.im/xkit/IMUIKit/10.9.11/1773382686/NEAISearchKit_iOS_v10.9.11.framework.zip?download=NEAISearchKit_iOS_v10.9.11.framework.zip",
      checksum: "f0ea2db462a1cd477bade02203e6a0b73c65d7a2f4034293e4ad8036bf212938"
    ),
  ]
)