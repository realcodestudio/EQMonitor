// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: notification_settings.proto
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

struct Eqmonitor_NotificationSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var eewSettings: Eqmonitor_NotificationSettings.EewSettings {
    get {return _eewSettings ?? Eqmonitor_NotificationSettings.EewSettings()}
    set {_eewSettings = newValue}
  }
  /// Returns true if `eewSettings` has been explicitly set.
  var hasEewSettings: Bool {return self._eewSettings != nil}
  /// Clears the value of `eewSettings`. Subsequent reads from it will return its default value.
  mutating func clearEewSettings() {self._eewSettings = nil}

  var earthquakeSettings: Eqmonitor_NotificationSettings.EarthquakeSettings {
    get {return _earthquakeSettings ?? Eqmonitor_NotificationSettings.EarthquakeSettings()}
    set {_earthquakeSettings = newValue}
  }
  /// Returns true if `earthquakeSettings` has been explicitly set.
  var hasEarthquakeSettings: Bool {return self._earthquakeSettings != nil}
  /// Clears the value of `earthquakeSettings`. Subsequent reads from it will return its default value.
  mutating func clearEarthquakeSettings() {self._earthquakeSettings = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct EewSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var emergencyIntensity: Eqmonitor_JmaIntensity {
      get {return _emergencyIntensity ?? .unspecified}
      set {_emergencyIntensity = newValue}
    }
    /// Returns true if `emergencyIntensity` has been explicitly set.
    var hasEmergencyIntensity: Bool {return self._emergencyIntensity != nil}
    /// Clears the value of `emergencyIntensity`. Subsequent reads from it will return its default value.
    mutating func clearEmergencyIntensity() {self._emergencyIntensity = nil}

    var silentIntensity: Eqmonitor_JmaIntensity {
      get {return _silentIntensity ?? .unspecified}
      set {_silentIntensity = newValue}
    }
    /// Returns true if `silentIntensity` has been explicitly set.
    var hasSilentIntensity: Bool {return self._silentIntensity != nil}
    /// Clears the value of `silentIntensity`. Subsequent reads from it will return its default value.
    mutating func clearSilentIntensity() {self._silentIntensity = nil}

    var regions: [Eqmonitor_NotificationSettings.EewSettings.Region] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    struct Region {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      var code: String = String()

      var name: String = String()

      var emergencyIntensity: Eqmonitor_JmaIntensity = .unspecified

      var silentIntensity: Eqmonitor_JmaIntensity = .unspecified

      var isMain: Bool = false

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}
    }

    init() {}

    fileprivate var _emergencyIntensity: Eqmonitor_JmaIntensity? = nil
    fileprivate var _silentIntensity: Eqmonitor_JmaIntensity? = nil
  }

  struct EarthquakeSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var emergencyIntensity: Eqmonitor_JmaIntensity {
      get {return _emergencyIntensity ?? .unspecified}
      set {_emergencyIntensity = newValue}
    }
    /// Returns true if `emergencyIntensity` has been explicitly set.
    var hasEmergencyIntensity: Bool {return self._emergencyIntensity != nil}
    /// Clears the value of `emergencyIntensity`. Subsequent reads from it will return its default value.
    mutating func clearEmergencyIntensity() {self._emergencyIntensity = nil}

    var silentIntensity: Eqmonitor_JmaIntensity {
      get {return _silentIntensity ?? .unspecified}
      set {_silentIntensity = newValue}
    }
    /// Returns true if `silentIntensity` has been explicitly set.
    var hasSilentIntensity: Bool {return self._silentIntensity != nil}
    /// Clears the value of `silentIntensity`. Subsequent reads from it will return its default value.
    mutating func clearSilentIntensity() {self._silentIntensity = nil}

    var regions: [Eqmonitor_NotificationSettings.EarthquakeSettings.Region] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    struct Region {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      var code: String = String()

      var name: String = String()

      var emergencyIntensity: Eqmonitor_JmaIntensity = .unspecified

      var silentIntensity: Eqmonitor_JmaIntensity = .unspecified

      var isMain: Bool = false

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}
    }

    init() {}

    fileprivate var _emergencyIntensity: Eqmonitor_JmaIntensity? = nil
    fileprivate var _silentIntensity: Eqmonitor_JmaIntensity? = nil
  }

  init() {}

  fileprivate var _eewSettings: Eqmonitor_NotificationSettings.EewSettings? = nil
  fileprivate var _earthquakeSettings: Eqmonitor_NotificationSettings.EarthquakeSettings? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Eqmonitor_NotificationSettings: @unchecked Sendable {}
extension Eqmonitor_NotificationSettings.EewSettings: @unchecked Sendable {}
extension Eqmonitor_NotificationSettings.EewSettings.Region: @unchecked Sendable {}
extension Eqmonitor_NotificationSettings.EarthquakeSettings: @unchecked Sendable {}
extension Eqmonitor_NotificationSettings.EarthquakeSettings.Region: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "eqmonitor"

extension Eqmonitor_NotificationSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NotificationSettings"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "eew_settings"),
    2: .standard(proto: "earthquake_settings"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._eewSettings) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._earthquakeSettings) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._eewSettings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._earthquakeSettings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Eqmonitor_NotificationSettings, rhs: Eqmonitor_NotificationSettings) -> Bool {
    if lhs._eewSettings != rhs._eewSettings {return false}
    if lhs._earthquakeSettings != rhs._earthquakeSettings {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Eqmonitor_NotificationSettings.EewSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Eqmonitor_NotificationSettings.protoMessageName + ".EewSettings"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "emergency_intensity"),
    2: .standard(proto: "silent_intensity"),
    3: .same(proto: "regions"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._emergencyIntensity) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self._silentIntensity) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.regions) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._emergencyIntensity {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._silentIntensity {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    } }()
    if !self.regions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.regions, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Eqmonitor_NotificationSettings.EewSettings, rhs: Eqmonitor_NotificationSettings.EewSettings) -> Bool {
    if lhs._emergencyIntensity != rhs._emergencyIntensity {return false}
    if lhs._silentIntensity != rhs._silentIntensity {return false}
    if lhs.regions != rhs.regions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Eqmonitor_NotificationSettings.EewSettings.Region: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Eqmonitor_NotificationSettings.EewSettings.protoMessageName + ".Region"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .same(proto: "name"),
    3: .standard(proto: "emergency_intensity"),
    4: .standard(proto: "silent_intensity"),
    5: .standard(proto: "is_main"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.code) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.emergencyIntensity) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.silentIntensity) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.isMain) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.emergencyIntensity != .unspecified {
      try visitor.visitSingularEnumField(value: self.emergencyIntensity, fieldNumber: 3)
    }
    if self.silentIntensity != .unspecified {
      try visitor.visitSingularEnumField(value: self.silentIntensity, fieldNumber: 4)
    }
    if self.isMain != false {
      try visitor.visitSingularBoolField(value: self.isMain, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Eqmonitor_NotificationSettings.EewSettings.Region, rhs: Eqmonitor_NotificationSettings.EewSettings.Region) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.name != rhs.name {return false}
    if lhs.emergencyIntensity != rhs.emergencyIntensity {return false}
    if lhs.silentIntensity != rhs.silentIntensity {return false}
    if lhs.isMain != rhs.isMain {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Eqmonitor_NotificationSettings.EarthquakeSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Eqmonitor_NotificationSettings.protoMessageName + ".EarthquakeSettings"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "emergency_intensity"),
    2: .standard(proto: "silent_intensity"),
    3: .same(proto: "regions"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._emergencyIntensity) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self._silentIntensity) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.regions) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._emergencyIntensity {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._silentIntensity {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    } }()
    if !self.regions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.regions, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Eqmonitor_NotificationSettings.EarthquakeSettings, rhs: Eqmonitor_NotificationSettings.EarthquakeSettings) -> Bool {
    if lhs._emergencyIntensity != rhs._emergencyIntensity {return false}
    if lhs._silentIntensity != rhs._silentIntensity {return false}
    if lhs.regions != rhs.regions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Eqmonitor_NotificationSettings.EarthquakeSettings.Region: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Eqmonitor_NotificationSettings.EarthquakeSettings.protoMessageName + ".Region"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .same(proto: "name"),
    3: .standard(proto: "emergency_intensity"),
    4: .standard(proto: "silent_intensity"),
    5: .standard(proto: "is_main"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.code) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.emergencyIntensity) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.silentIntensity) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.isMain) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.emergencyIntensity != .unspecified {
      try visitor.visitSingularEnumField(value: self.emergencyIntensity, fieldNumber: 3)
    }
    if self.silentIntensity != .unspecified {
      try visitor.visitSingularEnumField(value: self.silentIntensity, fieldNumber: 4)
    }
    if self.isMain != false {
      try visitor.visitSingularBoolField(value: self.isMain, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Eqmonitor_NotificationSettings.EarthquakeSettings.Region, rhs: Eqmonitor_NotificationSettings.EarthquakeSettings.Region) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.name != rhs.name {return false}
    if lhs.emergencyIntensity != rhs.emergencyIntensity {return false}
    if lhs.silentIntensity != rhs.silentIntensity {return false}
    if lhs.isMain != rhs.isMain {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
