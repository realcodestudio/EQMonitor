// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tsunami_observations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TsunamiObservation _$TsunamiObservationFromJson(Map<String, dynamic> json) {
  return _TsunamiObservation.fromJson(json);
}

/// @nodoc
mixin _$TsunamiObservation {
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<TsunamiObservationStation> get stations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TsunamiObservationCopyWith<TsunamiObservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsunamiObservationCopyWith<$Res> {
  factory $TsunamiObservationCopyWith(
          TsunamiObservation value, $Res Function(TsunamiObservation) then) =
      _$TsunamiObservationCopyWithImpl<$Res, TsunamiObservation>;
  @useResult
  $Res call(
      {String? code, String? name, List<TsunamiObservationStation> stations});
}

/// @nodoc
class _$TsunamiObservationCopyWithImpl<$Res, $Val extends TsunamiObservation>
    implements $TsunamiObservationCopyWith<$Res> {
  _$TsunamiObservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<TsunamiObservationStation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TsunamiObservationCopyWith<$Res>
    implements $TsunamiObservationCopyWith<$Res> {
  factory _$$_TsunamiObservationCopyWith(_$_TsunamiObservation value,
          $Res Function(_$_TsunamiObservation) then) =
      __$$_TsunamiObservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code, String? name, List<TsunamiObservationStation> stations});
}

/// @nodoc
class __$$_TsunamiObservationCopyWithImpl<$Res>
    extends _$TsunamiObservationCopyWithImpl<$Res, _$_TsunamiObservation>
    implements _$$_TsunamiObservationCopyWith<$Res> {
  __$$_TsunamiObservationCopyWithImpl(
      _$_TsunamiObservation _value, $Res Function(_$_TsunamiObservation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? stations = null,
  }) {
    return _then(_$_TsunamiObservation(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<TsunamiObservationStation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TsunamiObservation implements _TsunamiObservation {
  const _$_TsunamiObservation(
      {required this.code,
      required this.name,
      required final List<TsunamiObservationStation> stations})
      : _stations = stations;

  factory _$_TsunamiObservation.fromJson(Map<String, dynamic> json) =>
      _$$_TsunamiObservationFromJson(json);

  @override
  final String? code;
  @override
  final String? name;
  final List<TsunamiObservationStation> _stations;
  @override
  List<TsunamiObservationStation> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'TsunamiObservation(code: $code, name: $name, stations: $stations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TsunamiObservation &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TsunamiObservationCopyWith<_$_TsunamiObservation> get copyWith =>
      __$$_TsunamiObservationCopyWithImpl<_$_TsunamiObservation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TsunamiObservationToJson(
      this,
    );
  }
}

abstract class _TsunamiObservation implements TsunamiObservation {
  const factory _TsunamiObservation(
          {required final String? code,
          required final String? name,
          required final List<TsunamiObservationStation> stations}) =
      _$_TsunamiObservation;

  factory _TsunamiObservation.fromJson(Map<String, dynamic> json) =
      _$_TsunamiObservation.fromJson;

  @override
  String? get code;
  @override
  String? get name;
  @override
  List<TsunamiObservationStation> get stations;
  @override
  @JsonKey(ignore: true)
  _$$_TsunamiObservationCopyWith<_$_TsunamiObservation> get copyWith =>
      throw _privateConstructorUsedError;
}

TsunamiObservationStation _$TsunamiObservationStationFromJson(
    Map<String, dynamic> json) {
  return _TsunamiObservationStation.fromJson(json);
}

/// @nodoc
mixin _$TsunamiObservationStation {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// nullの時は`識別不能`
  DateTime? get firstHeightArrivalTime => throw _privateConstructorUsedError;
  TsunamiObservationFirstHeightInitial? get firstHeightInitial =>
      throw _privateConstructorUsedError;
  DateTime? get maxHeightTime => throw _privateConstructorUsedError;
  double? get maxHeightValue => throw _privateConstructorUsedError;

  /// `maxHeightValue`「以上」かどうか
  bool? get maxHeightIsOver => throw _privateConstructorUsedError;

  ///  上昇中かどうか
  bool? get maxHeightIsRising => throw _privateConstructorUsedError;
  TsunamiObservationStationCondition? get condition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TsunamiObservationStationCopyWith<TsunamiObservationStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsunamiObservationStationCopyWith<$Res> {
  factory $TsunamiObservationStationCopyWith(TsunamiObservationStation value,
          $Res Function(TsunamiObservationStation) then) =
      _$TsunamiObservationStationCopyWithImpl<$Res, TsunamiObservationStation>;
  @useResult
  $Res call(
      {String code,
      String name,
      DateTime? firstHeightArrivalTime,
      TsunamiObservationFirstHeightInitial? firstHeightInitial,
      DateTime? maxHeightTime,
      double? maxHeightValue,
      bool? maxHeightIsOver,
      bool? maxHeightIsRising,
      TsunamiObservationStationCondition? condition});
}

/// @nodoc
class _$TsunamiObservationStationCopyWithImpl<$Res,
        $Val extends TsunamiObservationStation>
    implements $TsunamiObservationStationCopyWith<$Res> {
  _$TsunamiObservationStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? firstHeightArrivalTime = freezed,
    Object? firstHeightInitial = freezed,
    Object? maxHeightTime = freezed,
    Object? maxHeightValue = freezed,
    Object? maxHeightIsOver = freezed,
    Object? maxHeightIsRising = freezed,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstHeightArrivalTime: freezed == firstHeightArrivalTime
          ? _value.firstHeightArrivalTime
          : firstHeightArrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      firstHeightInitial: freezed == firstHeightInitial
          ? _value.firstHeightInitial
          : firstHeightInitial // ignore: cast_nullable_to_non_nullable
              as TsunamiObservationFirstHeightInitial?,
      maxHeightTime: freezed == maxHeightTime
          ? _value.maxHeightTime
          : maxHeightTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxHeightValue: freezed == maxHeightValue
          ? _value.maxHeightValue
          : maxHeightValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeightIsOver: freezed == maxHeightIsOver
          ? _value.maxHeightIsOver
          : maxHeightIsOver // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxHeightIsRising: freezed == maxHeightIsRising
          ? _value.maxHeightIsRising
          : maxHeightIsRising // ignore: cast_nullable_to_non_nullable
              as bool?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as TsunamiObservationStationCondition?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TsunamiObservationStationCopyWith<$Res>
    implements $TsunamiObservationStationCopyWith<$Res> {
  factory _$$_TsunamiObservationStationCopyWith(
          _$_TsunamiObservationStation value,
          $Res Function(_$_TsunamiObservationStation) then) =
      __$$_TsunamiObservationStationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String name,
      DateTime? firstHeightArrivalTime,
      TsunamiObservationFirstHeightInitial? firstHeightInitial,
      DateTime? maxHeightTime,
      double? maxHeightValue,
      bool? maxHeightIsOver,
      bool? maxHeightIsRising,
      TsunamiObservationStationCondition? condition});
}

/// @nodoc
class __$$_TsunamiObservationStationCopyWithImpl<$Res>
    extends _$TsunamiObservationStationCopyWithImpl<$Res,
        _$_TsunamiObservationStation>
    implements _$$_TsunamiObservationStationCopyWith<$Res> {
  __$$_TsunamiObservationStationCopyWithImpl(
      _$_TsunamiObservationStation _value,
      $Res Function(_$_TsunamiObservationStation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? firstHeightArrivalTime = freezed,
    Object? firstHeightInitial = freezed,
    Object? maxHeightTime = freezed,
    Object? maxHeightValue = freezed,
    Object? maxHeightIsOver = freezed,
    Object? maxHeightIsRising = freezed,
    Object? condition = freezed,
  }) {
    return _then(_$_TsunamiObservationStation(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstHeightArrivalTime: freezed == firstHeightArrivalTime
          ? _value.firstHeightArrivalTime
          : firstHeightArrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      firstHeightInitial: freezed == firstHeightInitial
          ? _value.firstHeightInitial
          : firstHeightInitial // ignore: cast_nullable_to_non_nullable
              as TsunamiObservationFirstHeightInitial?,
      maxHeightTime: freezed == maxHeightTime
          ? _value.maxHeightTime
          : maxHeightTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxHeightValue: freezed == maxHeightValue
          ? _value.maxHeightValue
          : maxHeightValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeightIsOver: freezed == maxHeightIsOver
          ? _value.maxHeightIsOver
          : maxHeightIsOver // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxHeightIsRising: freezed == maxHeightIsRising
          ? _value.maxHeightIsRising
          : maxHeightIsRising // ignore: cast_nullable_to_non_nullable
              as bool?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as TsunamiObservationStationCondition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TsunamiObservationStation implements _TsunamiObservationStation {
  const _$_TsunamiObservationStation(
      {required this.code,
      required this.name,
      required this.firstHeightArrivalTime,
      required this.firstHeightInitial,
      required this.maxHeightTime,
      required this.maxHeightValue,
      required this.maxHeightIsOver,
      required this.maxHeightIsRising,
      required this.condition});

  factory _$_TsunamiObservationStation.fromJson(Map<String, dynamic> json) =>
      _$$_TsunamiObservationStationFromJson(json);

  @override
  final String code;
  @override
  final String name;

  /// nullの時は`識別不能`
  @override
  final DateTime? firstHeightArrivalTime;
  @override
  final TsunamiObservationFirstHeightInitial? firstHeightInitial;
  @override
  final DateTime? maxHeightTime;
  @override
  final double? maxHeightValue;

  /// `maxHeightValue`「以上」かどうか
  @override
  final bool? maxHeightIsOver;

  ///  上昇中かどうか
  @override
  final bool? maxHeightIsRising;
  @override
  final TsunamiObservationStationCondition? condition;

  @override
  String toString() {
    return 'TsunamiObservationStation(code: $code, name: $name, firstHeightArrivalTime: $firstHeightArrivalTime, firstHeightInitial: $firstHeightInitial, maxHeightTime: $maxHeightTime, maxHeightValue: $maxHeightValue, maxHeightIsOver: $maxHeightIsOver, maxHeightIsRising: $maxHeightIsRising, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TsunamiObservationStation &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstHeightArrivalTime, firstHeightArrivalTime) ||
                other.firstHeightArrivalTime == firstHeightArrivalTime) &&
            (identical(other.firstHeightInitial, firstHeightInitial) ||
                other.firstHeightInitial == firstHeightInitial) &&
            (identical(other.maxHeightTime, maxHeightTime) ||
                other.maxHeightTime == maxHeightTime) &&
            (identical(other.maxHeightValue, maxHeightValue) ||
                other.maxHeightValue == maxHeightValue) &&
            (identical(other.maxHeightIsOver, maxHeightIsOver) ||
                other.maxHeightIsOver == maxHeightIsOver) &&
            (identical(other.maxHeightIsRising, maxHeightIsRising) ||
                other.maxHeightIsRising == maxHeightIsRising) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      name,
      firstHeightArrivalTime,
      firstHeightInitial,
      maxHeightTime,
      maxHeightValue,
      maxHeightIsOver,
      maxHeightIsRising,
      condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TsunamiObservationStationCopyWith<_$_TsunamiObservationStation>
      get copyWith => __$$_TsunamiObservationStationCopyWithImpl<
          _$_TsunamiObservationStation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TsunamiObservationStationToJson(
      this,
    );
  }
}

abstract class _TsunamiObservationStation implements TsunamiObservationStation {
  const factory _TsunamiObservationStation(
      {required final String code,
      required final String name,
      required final DateTime? firstHeightArrivalTime,
      required final TsunamiObservationFirstHeightInitial? firstHeightInitial,
      required final DateTime? maxHeightTime,
      required final double? maxHeightValue,
      required final bool? maxHeightIsOver,
      required final bool? maxHeightIsRising,
      required final TsunamiObservationStationCondition?
          condition}) = _$_TsunamiObservationStation;

  factory _TsunamiObservationStation.fromJson(Map<String, dynamic> json) =
      _$_TsunamiObservationStation.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override

  /// nullの時は`識別不能`
  DateTime? get firstHeightArrivalTime;
  @override
  TsunamiObservationFirstHeightInitial? get firstHeightInitial;
  @override
  DateTime? get maxHeightTime;
  @override
  double? get maxHeightValue;
  @override

  /// `maxHeightValue`「以上」かどうか
  bool? get maxHeightIsOver;
  @override

  ///  上昇中かどうか
  bool? get maxHeightIsRising;
  @override
  TsunamiObservationStationCondition? get condition;
  @override
  @JsonKey(ignore: true)
  _$$_TsunamiObservationStationCopyWith<_$_TsunamiObservationStation>
      get copyWith => throw _privateConstructorUsedError;
}
