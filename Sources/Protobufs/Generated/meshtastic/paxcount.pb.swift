// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: meshtastic/paxcount.proto
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

///
/// TODO: REPLACE
struct Paxcount: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// seen Wifi devices
  var wifi: UInt32 = 0

  ///
  /// Seen BLE devices
  var ble: UInt32 = 0

  ///
  /// Uptime in seconds
  var uptime: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "meshtastic"

extension Paxcount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Paxcount"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "wifi"),
    2: .same(proto: "ble"),
    3: .same(proto: "uptime"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.wifi) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.ble) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.uptime) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.wifi != 0 {
      try visitor.visitSingularUInt32Field(value: self.wifi, fieldNumber: 1)
    }
    if self.ble != 0 {
      try visitor.visitSingularUInt32Field(value: self.ble, fieldNumber: 2)
    }
    if self.uptime != 0 {
      try visitor.visitSingularUInt32Field(value: self.uptime, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Paxcount, rhs: Paxcount) -> Bool {
    if lhs.wifi != rhs.wifi {return false}
    if lhs.ble != rhs.ble {return false}
    if lhs.uptime != rhs.uptime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
