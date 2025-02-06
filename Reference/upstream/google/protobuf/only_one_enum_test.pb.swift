// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/only_one_enum_test.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Proto2Unittest_OnlyOneEnum: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case `default` // = 0
  case valid // = 10
  case UNRECOGNIZED(Int)

  init() {
    self = .default
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .default
    case 10: self = .valid
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .default: return 0
    case .valid: return 10
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Proto2Unittest_OnlyOneEnum] = [
    .default,
    .valid,
  ]

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Proto2Unittest_OnlyOneEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ONLY_ONE_ENUM_DEFAULT"),
    10: .same(proto: "ONLY_ONE_ENUM_VALID"),
  ]
}
