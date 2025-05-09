// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: meshtastic/clientonly.proto
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
/// This abstraction is used to contain any configuration for provisioning a node on any client.
/// It is useful for importing and exporting configurations.
struct DeviceProfile: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Long name for the node
  var longName: String {
    get {return _longName ?? String()}
    set {_longName = newValue}
  }
  /// Returns true if `longName` has been explicitly set.
  var hasLongName: Bool {return self._longName != nil}
  /// Clears the value of `longName`. Subsequent reads from it will return its default value.
  mutating func clearLongName() {self._longName = nil}

  ///
  /// Short name of the node
  var shortName: String {
    get {return _shortName ?? String()}
    set {_shortName = newValue}
  }
  /// Returns true if `shortName` has been explicitly set.
  var hasShortName: Bool {return self._shortName != nil}
  /// Clears the value of `shortName`. Subsequent reads from it will return its default value.
  mutating func clearShortName() {self._shortName = nil}

  ///
  /// The url of the channels from our node
  var channelURL: String {
    get {return _channelURL ?? String()}
    set {_channelURL = newValue}
  }
  /// Returns true if `channelURL` has been explicitly set.
  var hasChannelURL: Bool {return self._channelURL != nil}
  /// Clears the value of `channelURL`. Subsequent reads from it will return its default value.
  mutating func clearChannelURL() {self._channelURL = nil}

  ///
  /// The Config of the node
  var config: LocalConfig {
    get {return _config ?? LocalConfig()}
    set {_config = newValue}
  }
  /// Returns true if `config` has been explicitly set.
  var hasConfig: Bool {return self._config != nil}
  /// Clears the value of `config`. Subsequent reads from it will return its default value.
  mutating func clearConfig() {self._config = nil}

  ///
  /// The ModuleConfig of the node
  var moduleConfig: LocalModuleConfig {
    get {return _moduleConfig ?? LocalModuleConfig()}
    set {_moduleConfig = newValue}
  }
  /// Returns true if `moduleConfig` has been explicitly set.
  var hasModuleConfig: Bool {return self._moduleConfig != nil}
  /// Clears the value of `moduleConfig`. Subsequent reads from it will return its default value.
  mutating func clearModuleConfig() {self._moduleConfig = nil}

  ///
  /// Fixed position data
  var fixedPosition: Position {
    get {return _fixedPosition ?? Position()}
    set {_fixedPosition = newValue}
  }
  /// Returns true if `fixedPosition` has been explicitly set.
  var hasFixedPosition: Bool {return self._fixedPosition != nil}
  /// Clears the value of `fixedPosition`. Subsequent reads from it will return its default value.
  mutating func clearFixedPosition() {self._fixedPosition = nil}

  ///
  /// Ringtone for ExternalNotification
  var ringtone: String {
    get {return _ringtone ?? String()}
    set {_ringtone = newValue}
  }
  /// Returns true if `ringtone` has been explicitly set.
  var hasRingtone: Bool {return self._ringtone != nil}
  /// Clears the value of `ringtone`. Subsequent reads from it will return its default value.
  mutating func clearRingtone() {self._ringtone = nil}

  ///
  /// Predefined messages for CannedMessage
  var cannedMessages: String {
    get {return _cannedMessages ?? String()}
    set {_cannedMessages = newValue}
  }
  /// Returns true if `cannedMessages` has been explicitly set.
  var hasCannedMessages: Bool {return self._cannedMessages != nil}
  /// Clears the value of `cannedMessages`. Subsequent reads from it will return its default value.
  mutating func clearCannedMessages() {self._cannedMessages = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _longName: String? = nil
  fileprivate var _shortName: String? = nil
  fileprivate var _channelURL: String? = nil
  fileprivate var _config: LocalConfig? = nil
  fileprivate var _moduleConfig: LocalModuleConfig? = nil
  fileprivate var _fixedPosition: Position? = nil
  fileprivate var _ringtone: String? = nil
  fileprivate var _cannedMessages: String? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "meshtastic"

extension DeviceProfile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeviceProfile"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "long_name"),
    2: .standard(proto: "short_name"),
    3: .standard(proto: "channel_url"),
    4: .same(proto: "config"),
    5: .standard(proto: "module_config"),
    6: .standard(proto: "fixed_position"),
    7: .same(proto: "ringtone"),
    8: .standard(proto: "canned_messages"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._longName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._shortName) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._channelURL) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._config) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._moduleConfig) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._fixedPosition) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self._ringtone) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self._cannedMessages) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._longName {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._shortName {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._channelURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._config {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._moduleConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._fixedPosition {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._ringtone {
      try visitor.visitSingularStringField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._cannedMessages {
      try visitor.visitSingularStringField(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DeviceProfile, rhs: DeviceProfile) -> Bool {
    if lhs._longName != rhs._longName {return false}
    if lhs._shortName != rhs._shortName {return false}
    if lhs._channelURL != rhs._channelURL {return false}
    if lhs._config != rhs._config {return false}
    if lhs._moduleConfig != rhs._moduleConfig {return false}
    if lhs._fixedPosition != rhs._fixedPosition {return false}
    if lhs._ringtone != rhs._ringtone {return false}
    if lhs._cannedMessages != rhs._cannedMessages {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
