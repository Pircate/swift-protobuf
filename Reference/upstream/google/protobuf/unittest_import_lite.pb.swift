// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_import_lite.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// Author: kenton@google.com (Kenton Varda)
//
// This is like unittest_import.proto but with optimize_for = LITE_RUNTIME.

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

enum ProtobufUnittestImport_ImportEnumLite: Int, SwiftProtobuf.Enum, Swift.CaseIterable {
  case importLiteFoo = 7
  case importLiteBar = 8
  case importLiteBaz = 9

  init() {
    self = .importLiteFoo
  }

}

struct ProtobufUnittestImport_ImportMessageLite: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var d: Int32 {
    get {return _d ?? 0}
    set {_d = newValue}
  }
  /// Returns true if `d` has been explicitly set.
  var hasD: Bool {return self._d != nil}
  /// Clears the value of `d`. Subsequent reads from it will return its default value.
  mutating func clearD() {self._d = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _d: Int32? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest_import"

extension ProtobufUnittestImport_ImportEnumLite: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    7: .same(proto: "IMPORT_LITE_FOO"),
    8: .same(proto: "IMPORT_LITE_BAR"),
    9: .same(proto: "IMPORT_LITE_BAZ"),
  ]
}

extension ProtobufUnittestImport_ImportMessageLite: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ImportMessageLite"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "d"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._d) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._d {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittestImport_ImportMessageLite, rhs: ProtobufUnittestImport_ImportMessageLite) -> Bool {
    if lhs._d != rhs._d {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
