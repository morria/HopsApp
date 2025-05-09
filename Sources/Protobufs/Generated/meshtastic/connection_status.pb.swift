// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: meshtastic/connection_status.proto
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

struct DeviceConnectionStatus: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// WiFi Status
  var wifi: WifiConnectionStatus {
    get {return _wifi ?? WifiConnectionStatus()}
    set {_wifi = newValue}
  }
  /// Returns true if `wifi` has been explicitly set.
  var hasWifi: Bool {return self._wifi != nil}
  /// Clears the value of `wifi`. Subsequent reads from it will return its default value.
  mutating func clearWifi() {self._wifi = nil}

  ///
  /// WiFi Status
  var ethernet: EthernetConnectionStatus {
    get {return _ethernet ?? EthernetConnectionStatus()}
    set {_ethernet = newValue}
  }
  /// Returns true if `ethernet` has been explicitly set.
  var hasEthernet: Bool {return self._ethernet != nil}
  /// Clears the value of `ethernet`. Subsequent reads from it will return its default value.
  mutating func clearEthernet() {self._ethernet = nil}

  ///
  /// Bluetooth Status
  var bluetooth: BluetoothConnectionStatus {
    get {return _bluetooth ?? BluetoothConnectionStatus()}
    set {_bluetooth = newValue}
  }
  /// Returns true if `bluetooth` has been explicitly set.
  var hasBluetooth: Bool {return self._bluetooth != nil}
  /// Clears the value of `bluetooth`. Subsequent reads from it will return its default value.
  mutating func clearBluetooth() {self._bluetooth = nil}

  ///
  /// Serial Status
  var serial: SerialConnectionStatus {
    get {return _serial ?? SerialConnectionStatus()}
    set {_serial = newValue}
  }
  /// Returns true if `serial` has been explicitly set.
  var hasSerial: Bool {return self._serial != nil}
  /// Clears the value of `serial`. Subsequent reads from it will return its default value.
  mutating func clearSerial() {self._serial = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _wifi: WifiConnectionStatus? = nil
  fileprivate var _ethernet: EthernetConnectionStatus? = nil
  fileprivate var _bluetooth: BluetoothConnectionStatus? = nil
  fileprivate var _serial: SerialConnectionStatus? = nil
}

///
/// WiFi connection status
struct WifiConnectionStatus: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Connection status
  var status: NetworkConnectionStatus {
    get {return _status ?? NetworkConnectionStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  mutating func clearStatus() {self._status = nil}

  ///
  /// WiFi access point SSID
  var ssid: String = String()

  ///
  /// RSSI of wireless connection
  var rssi: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _status: NetworkConnectionStatus? = nil
}

///
/// Ethernet connection status
struct EthernetConnectionStatus: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Connection status
  var status: NetworkConnectionStatus {
    get {return _status ?? NetworkConnectionStatus()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  mutating func clearStatus() {self._status = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _status: NetworkConnectionStatus? = nil
}

///
/// Ethernet or WiFi connection status
struct NetworkConnectionStatus: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// IP address of device
  var ipAddress: UInt32 = 0

  ///
  /// Whether the device has an active connection or not
  var isConnected: Bool = false

  ///
  /// Whether the device has an active connection to an MQTT broker or not
  var isMqttConnected: Bool = false

  ///
  /// Whether the device is actively remote syslogging or not
  var isSyslogConnected: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// Bluetooth connection status
struct BluetoothConnectionStatus: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The pairing PIN for bluetooth
  var pin: UInt32 = 0

  ///
  /// RSSI of bluetooth connection
  var rssi: Int32 = 0

  ///
  /// Whether the device has an active connection or not
  var isConnected: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// Serial connection status
struct SerialConnectionStatus: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Serial baud rate
  var baud: UInt32 = 0

  ///
  /// Whether the device has an active connection or not
  var isConnected: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "meshtastic"

extension DeviceConnectionStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeviceConnectionStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "wifi"),
    2: .same(proto: "ethernet"),
    3: .same(proto: "bluetooth"),
    4: .same(proto: "serial"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._wifi) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._ethernet) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._bluetooth) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._serial) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._wifi {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._ethernet {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._bluetooth {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._serial {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DeviceConnectionStatus, rhs: DeviceConnectionStatus) -> Bool {
    if lhs._wifi != rhs._wifi {return false}
    if lhs._ethernet != rhs._ethernet {return false}
    if lhs._bluetooth != rhs._bluetooth {return false}
    if lhs._serial != rhs._serial {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WifiConnectionStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WifiConnectionStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "ssid"),
    3: .same(proto: "rssi"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._status) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ssid) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.rssi) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.ssid.isEmpty {
      try visitor.visitSingularStringField(value: self.ssid, fieldNumber: 2)
    }
    if self.rssi != 0 {
      try visitor.visitSingularInt32Field(value: self.rssi, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WifiConnectionStatus, rhs: WifiConnectionStatus) -> Bool {
    if lhs._status != rhs._status {return false}
    if lhs.ssid != rhs.ssid {return false}
    if lhs.rssi != rhs.rssi {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension EthernetConnectionStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EthernetConnectionStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._status) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: EthernetConnectionStatus, rhs: EthernetConnectionStatus) -> Bool {
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension NetworkConnectionStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NetworkConnectionStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ip_address"),
    2: .standard(proto: "is_connected"),
    3: .standard(proto: "is_mqtt_connected"),
    4: .standard(proto: "is_syslog_connected"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self.ipAddress) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.isConnected) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.isMqttConnected) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.isSyslogConnected) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.ipAddress != 0 {
      try visitor.visitSingularFixed32Field(value: self.ipAddress, fieldNumber: 1)
    }
    if self.isConnected != false {
      try visitor.visitSingularBoolField(value: self.isConnected, fieldNumber: 2)
    }
    if self.isMqttConnected != false {
      try visitor.visitSingularBoolField(value: self.isMqttConnected, fieldNumber: 3)
    }
    if self.isSyslogConnected != false {
      try visitor.visitSingularBoolField(value: self.isSyslogConnected, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: NetworkConnectionStatus, rhs: NetworkConnectionStatus) -> Bool {
    if lhs.ipAddress != rhs.ipAddress {return false}
    if lhs.isConnected != rhs.isConnected {return false}
    if lhs.isMqttConnected != rhs.isMqttConnected {return false}
    if lhs.isSyslogConnected != rhs.isSyslogConnected {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension BluetoothConnectionStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BluetoothConnectionStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pin"),
    2: .same(proto: "rssi"),
    3: .standard(proto: "is_connected"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.pin) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.rssi) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.isConnected) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.pin != 0 {
      try visitor.visitSingularUInt32Field(value: self.pin, fieldNumber: 1)
    }
    if self.rssi != 0 {
      try visitor.visitSingularInt32Field(value: self.rssi, fieldNumber: 2)
    }
    if self.isConnected != false {
      try visitor.visitSingularBoolField(value: self.isConnected, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: BluetoothConnectionStatus, rhs: BluetoothConnectionStatus) -> Bool {
    if lhs.pin != rhs.pin {return false}
    if lhs.rssi != rhs.rssi {return false}
    if lhs.isConnected != rhs.isConnected {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SerialConnectionStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SerialConnectionStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "baud"),
    2: .standard(proto: "is_connected"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.baud) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.isConnected) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.baud != 0 {
      try visitor.visitSingularUInt32Field(value: self.baud, fieldNumber: 1)
    }
    if self.isConnected != false {
      try visitor.visitSingularBoolField(value: self.isConnected, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SerialConnectionStatus, rhs: SerialConnectionStatus) -> Bool {
    if lhs.baud != rhs.baud {return false}
    if lhs.isConnected != rhs.isConnected {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
