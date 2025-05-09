// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: meshtastic/atak.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
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

enum Team: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int

  ///
  /// Unspecifed
  case unspecifedColor // = 0

  ///
  /// White
  case white // = 1

  ///
  /// Yellow
  case yellow // = 2

  ///
  /// Orange
  case orange // = 3

  ///
  /// Magenta
  case magenta // = 4

  ///
  /// Red
  case red // = 5

  ///
  /// Maroon
  case maroon // = 6

  ///
  /// Purple
  case purple // = 7

  ///
  /// Dark Blue
  case darkBlue // = 8

  ///
  /// Blue
  case blue // = 9

  ///
  /// Cyan
  case cyan // = 10

  ///
  /// Teal
  case teal // = 11

  ///
  /// Green
  case green // = 12

  ///
  /// Dark Green
  case darkGreen // = 13

  ///
  /// Brown
  case brown // = 14
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecifedColor
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecifedColor
    case 1: self = .white
    case 2: self = .yellow
    case 3: self = .orange
    case 4: self = .magenta
    case 5: self = .red
    case 6: self = .maroon
    case 7: self = .purple
    case 8: self = .darkBlue
    case 9: self = .blue
    case 10: self = .cyan
    case 11: self = .teal
    case 12: self = .green
    case 13: self = .darkGreen
    case 14: self = .brown
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecifedColor: return 0
    case .white: return 1
    case .yellow: return 2
    case .orange: return 3
    case .magenta: return 4
    case .red: return 5
    case .maroon: return 6
    case .purple: return 7
    case .darkBlue: return 8
    case .blue: return 9
    case .cyan: return 10
    case .teal: return 11
    case .green: return 12
    case .darkGreen: return 13
    case .brown: return 14
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Team] = [
    .unspecifedColor,
    .white,
    .yellow,
    .orange,
    .magenta,
    .red,
    .maroon,
    .purple,
    .darkBlue,
    .blue,
    .cyan,
    .teal,
    .green,
    .darkGreen,
    .brown,
  ]

}

///
/// Role of the group member
enum MemberRole: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int

  ///
  /// Unspecifed
  case unspecifed // = 0

  ///
  /// Team Member
  case teamMember // = 1

  ///
  /// Team Lead
  case teamLead // = 2

  ///
  /// Headquarters
  case hq // = 3

  ///
  /// Airsoft enthusiast
  case sniper // = 4

  ///
  /// Medic
  case medic // = 5

  ///
  /// ForwardObserver
  case forwardObserver // = 6

  ///
  /// Radio Telephone Operator
  case rto // = 7

  ///
  /// Doggo
  case k9 // = 8
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecifed
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecifed
    case 1: self = .teamMember
    case 2: self = .teamLead
    case 3: self = .hq
    case 4: self = .sniper
    case 5: self = .medic
    case 6: self = .forwardObserver
    case 7: self = .rto
    case 8: self = .k9
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecifed: return 0
    case .teamMember: return 1
    case .teamLead: return 2
    case .hq: return 3
    case .sniper: return 4
    case .medic: return 5
    case .forwardObserver: return 6
    case .rto: return 7
    case .k9: return 8
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [MemberRole] = [
    .unspecifed,
    .teamMember,
    .teamLead,
    .hq,
    .sniper,
    .medic,
    .forwardObserver,
    .rto,
    .k9,
  ]

}

///
/// Packets for the official ATAK Plugin
struct TAKPacket: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Are the payloads strings compressed for LoRA transport?
  var isCompressed: Bool = false

  ///
  /// The contact / callsign for ATAK user
  var contact: Contact {
    get {return _contact ?? Contact()}
    set {_contact = newValue}
  }
  /// Returns true if `contact` has been explicitly set.
  var hasContact: Bool {return self._contact != nil}
  /// Clears the value of `contact`. Subsequent reads from it will return its default value.
  mutating func clearContact() {self._contact = nil}

  ///
  /// The group for ATAK user
  var group: Group {
    get {return _group ?? Group()}
    set {_group = newValue}
  }
  /// Returns true if `group` has been explicitly set.
  var hasGroup: Bool {return self._group != nil}
  /// Clears the value of `group`. Subsequent reads from it will return its default value.
  mutating func clearGroup() {self._group = nil}

  ///
  /// The status of the ATAK EUD
  var status: Status {
    get {return _status ?? Status()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  mutating func clearStatus() {self._status = nil}

  ///
  /// The payload of the packet
  var payloadVariant: TAKPacket.OneOf_PayloadVariant? = nil

  ///
  /// TAK position report
  var pli: PLI {
    get {
      if case .pli(let v)? = payloadVariant {return v}
      return PLI()
    }
    set {payloadVariant = .pli(newValue)}
  }

  ///
  /// ATAK GeoChat message
  var chat: GeoChat {
    get {
      if case .chat(let v)? = payloadVariant {return v}
      return GeoChat()
    }
    set {payloadVariant = .chat(newValue)}
  }

  ///
  /// Generic CoT detail XML
  /// May be compressed / truncated by the sender (EUD)
  var detail: Data {
    get {
      if case .detail(let v)? = payloadVariant {return v}
      return Data()
    }
    set {payloadVariant = .detail(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  ///
  /// The payload of the packet
  enum OneOf_PayloadVariant: Equatable, @unchecked Sendable {
    ///
    /// TAK position report
    case pli(PLI)
    ///
    /// ATAK GeoChat message
    case chat(GeoChat)
    ///
    /// Generic CoT detail XML
    /// May be compressed / truncated by the sender (EUD)
    case detail(Data)

  }

  init() {}

  fileprivate var _contact: Contact? = nil
  fileprivate var _group: Group? = nil
  fileprivate var _status: Status? = nil
}

///
/// ATAK GeoChat message
struct GeoChat: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The text message
  var message: String = String()

  ///
  /// Uid recipient of the message
  var to: String {
    get {return _to ?? String()}
    set {_to = newValue}
  }
  /// Returns true if `to` has been explicitly set.
  var hasTo: Bool {return self._to != nil}
  /// Clears the value of `to`. Subsequent reads from it will return its default value.
  mutating func clearTo() {self._to = nil}

  ///
  /// Callsign of the recipient for the message
  var toCallsign: String {
    get {return _toCallsign ?? String()}
    set {_toCallsign = newValue}
  }
  /// Returns true if `toCallsign` has been explicitly set.
  var hasToCallsign: Bool {return self._toCallsign != nil}
  /// Clears the value of `toCallsign`. Subsequent reads from it will return its default value.
  mutating func clearToCallsign() {self._toCallsign = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _to: String? = nil
  fileprivate var _toCallsign: String? = nil
}

///
/// ATAK Group
/// <__group role='Team Member' name='Cyan'/>
struct Group: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Role of the group member
  var role: MemberRole = .unspecifed

  ///
  /// Team (color)
  /// Default Cyan
  var team: Team = .unspecifedColor

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// ATAK EUD Status
/// <status battery='100' />
struct Status: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Battery level
  var battery: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// ATAK Contact
/// <contact endpoint='0.0.0.0:4242:tcp' phone='+12345678' callsign='FALKE'/>
struct Contact: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Callsign
  var callsign: String = String()

  ///
  /// Device callsign
  var deviceCallsign: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// Position Location Information from ATAK
struct PLI: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The new preferred location encoding, multiply by 1e-7 to get degrees
  /// in floating point
  var latitudeI: Int32 = 0

  ///
  /// The new preferred location encoding, multiply by 1e-7 to get degrees
  /// in floating point
  var longitudeI: Int32 = 0

  ///
  /// Altitude (ATAK prefers HAE)
  var altitude: Int32 = 0

  ///
  /// Speed
  var speed: UInt32 = 0

  ///
  /// Course in degrees
  var course: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "meshtastic"

extension Team: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Unspecifed_Color"),
    1: .same(proto: "White"),
    2: .same(proto: "Yellow"),
    3: .same(proto: "Orange"),
    4: .same(proto: "Magenta"),
    5: .same(proto: "Red"),
    6: .same(proto: "Maroon"),
    7: .same(proto: "Purple"),
    8: .same(proto: "Dark_Blue"),
    9: .same(proto: "Blue"),
    10: .same(proto: "Cyan"),
    11: .same(proto: "Teal"),
    12: .same(proto: "Green"),
    13: .same(proto: "Dark_Green"),
    14: .same(proto: "Brown"),
  ]
}

extension MemberRole: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Unspecifed"),
    1: .same(proto: "TeamMember"),
    2: .same(proto: "TeamLead"),
    3: .same(proto: "HQ"),
    4: .same(proto: "Sniper"),
    5: .same(proto: "Medic"),
    6: .same(proto: "ForwardObserver"),
    7: .same(proto: "RTO"),
    8: .same(proto: "K9"),
  ]
}

extension TAKPacket: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TAKPacket"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "is_compressed"),
    2: .same(proto: "contact"),
    3: .same(proto: "group"),
    4: .same(proto: "status"),
    5: .same(proto: "pli"),
    6: .same(proto: "chat"),
    7: .same(proto: "detail"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.isCompressed) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._contact) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._group) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._status) }()
      case 5: try {
        var v: PLI?
        var hadOneofValue = false
        if let current = self.payloadVariant {
          hadOneofValue = true
          if case .pli(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.payloadVariant = .pli(v)
        }
      }()
      case 6: try {
        var v: GeoChat?
        var hadOneofValue = false
        if let current = self.payloadVariant {
          hadOneofValue = true
          if case .chat(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.payloadVariant = .chat(v)
        }
      }()
      case 7: try {
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {
          if self.payloadVariant != nil {try decoder.handleConflictingOneOf()}
          self.payloadVariant = .detail(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.isCompressed != false {
      try visitor.visitSingularBoolField(value: self.isCompressed, fieldNumber: 1)
    }
    try { if let v = self._contact {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._group {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    switch self.payloadVariant {
    case .pli?: try {
      guard case .pli(let v)? = self.payloadVariant else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case .chat?: try {
      guard case .chat(let v)? = self.payloadVariant else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }()
    case .detail?: try {
      guard case .detail(let v)? = self.payloadVariant else { preconditionFailure() }
      try visitor.visitSingularBytesField(value: v, fieldNumber: 7)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TAKPacket, rhs: TAKPacket) -> Bool {
    if lhs.isCompressed != rhs.isCompressed {return false}
    if lhs._contact != rhs._contact {return false}
    if lhs._group != rhs._group {return false}
    if lhs._status != rhs._status {return false}
    if lhs.payloadVariant != rhs.payloadVariant {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GeoChat: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GeoChat"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
    2: .same(proto: "to"),
    3: .standard(proto: "to_callsign"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.message) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._to) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._toCallsign) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 1)
    }
    try { if let v = self._to {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._toCallsign {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: GeoChat, rhs: GeoChat) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs._to != rhs._to {return false}
    if lhs._toCallsign != rhs._toCallsign {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Group: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Group"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "role"),
    2: .same(proto: "team"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.role) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.team) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.role != .unspecifed {
      try visitor.visitSingularEnumField(value: self.role, fieldNumber: 1)
    }
    if self.team != .unspecifedColor {
      try visitor.visitSingularEnumField(value: self.team, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Group, rhs: Group) -> Bool {
    if lhs.role != rhs.role {return false}
    if lhs.team != rhs.team {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Status: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Status"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "battery"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.battery) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.battery != 0 {
      try visitor.visitSingularUInt32Field(value: self.battery, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Status, rhs: Status) -> Bool {
    if lhs.battery != rhs.battery {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Contact: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Contact"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "callsign"),
    2: .standard(proto: "device_callsign"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.callsign) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deviceCallsign) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.callsign.isEmpty {
      try visitor.visitSingularStringField(value: self.callsign, fieldNumber: 1)
    }
    if !self.deviceCallsign.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceCallsign, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Contact, rhs: Contact) -> Bool {
    if lhs.callsign != rhs.callsign {return false}
    if lhs.deviceCallsign != rhs.deviceCallsign {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PLI: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PLI"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "latitude_i"),
    2: .standard(proto: "longitude_i"),
    3: .same(proto: "altitude"),
    4: .same(proto: "speed"),
    5: .same(proto: "course"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularSFixed32Field(value: &self.latitudeI) }()
      case 2: try { try decoder.decodeSingularSFixed32Field(value: &self.longitudeI) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.altitude) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.speed) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self.course) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.latitudeI != 0 {
      try visitor.visitSingularSFixed32Field(value: self.latitudeI, fieldNumber: 1)
    }
    if self.longitudeI != 0 {
      try visitor.visitSingularSFixed32Field(value: self.longitudeI, fieldNumber: 2)
    }
    if self.altitude != 0 {
      try visitor.visitSingularInt32Field(value: self.altitude, fieldNumber: 3)
    }
    if self.speed != 0 {
      try visitor.visitSingularUInt32Field(value: self.speed, fieldNumber: 4)
    }
    if self.course != 0 {
      try visitor.visitSingularUInt32Field(value: self.course, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PLI, rhs: PLI) -> Bool {
    if lhs.latitudeI != rhs.latitudeI {return false}
    if lhs.longitudeI != rhs.longitudeI {return false}
    if lhs.altitude != rhs.altitude {return false}
    if lhs.speed != rhs.speed {return false}
    if lhs.course != rhs.course {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
