// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewRate _$ViewRateFromJson(Map<String, dynamic> json) {
  return _ViewRate.fromJson(json);
}

/// @nodoc
class _$ViewRateTearOff {
  const _$ViewRateTearOff();

  _ViewRate call(
      {required int id,
      required String abbreviation,
      required String name,
      required int scale,
      required double todayRate,
      required double tomorrowRate,
      required bool isEnabled,
      int? order}) {
    return _ViewRate(
      id: id,
      abbreviation: abbreviation,
      name: name,
      scale: scale,
      todayRate: todayRate,
      tomorrowRate: tomorrowRate,
      isEnabled: isEnabled,
      order: order,
    );
  }

  ViewRate fromJson(Map<String, Object?> json) {
    return ViewRate.fromJson(json);
  }
}

/// @nodoc
const $ViewRate = _$ViewRateTearOff();

/// @nodoc
mixin _$ViewRate {
  int get id => throw _privateConstructorUsedError;
  String get abbreviation => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get scale => throw _privateConstructorUsedError;
  double get todayRate => throw _privateConstructorUsedError;
  double get tomorrowRate => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewRateCopyWith<ViewRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewRateCopyWith<$Res> {
  factory $ViewRateCopyWith(ViewRate value, $Res Function(ViewRate) then) =
      _$ViewRateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String abbreviation,
      String name,
      int scale,
      double todayRate,
      double tomorrowRate,
      bool isEnabled,
      int? order});
}

/// @nodoc
class _$ViewRateCopyWithImpl<$Res> implements $ViewRateCopyWith<$Res> {
  _$ViewRateCopyWithImpl(this._value, this._then);

  final ViewRate _value;
  // ignore: unused_field
  final $Res Function(ViewRate) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? abbreviation = freezed,
    Object? name = freezed,
    Object? scale = freezed,
    Object? todayRate = freezed,
    Object? tomorrowRate = freezed,
    Object? isEnabled = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
      todayRate: todayRate == freezed
          ? _value.todayRate
          : todayRate // ignore: cast_nullable_to_non_nullable
              as double,
      tomorrowRate: tomorrowRate == freezed
          ? _value.tomorrowRate
          : tomorrowRate // ignore: cast_nullable_to_non_nullable
              as double,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ViewRateCopyWith<$Res> implements $ViewRateCopyWith<$Res> {
  factory _$ViewRateCopyWith(_ViewRate value, $Res Function(_ViewRate) then) =
      __$ViewRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String abbreviation,
      String name,
      int scale,
      double todayRate,
      double tomorrowRate,
      bool isEnabled,
      int? order});
}

/// @nodoc
class __$ViewRateCopyWithImpl<$Res> extends _$ViewRateCopyWithImpl<$Res>
    implements _$ViewRateCopyWith<$Res> {
  __$ViewRateCopyWithImpl(_ViewRate _value, $Res Function(_ViewRate) _then)
      : super(_value, (v) => _then(v as _ViewRate));

  @override
  _ViewRate get _value => super._value as _ViewRate;

  @override
  $Res call({
    Object? id = freezed,
    Object? abbreviation = freezed,
    Object? name = freezed,
    Object? scale = freezed,
    Object? todayRate = freezed,
    Object? tomorrowRate = freezed,
    Object? isEnabled = freezed,
    Object? order = freezed,
  }) {
    return _then(_ViewRate(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
      todayRate: todayRate == freezed
          ? _value.todayRate
          : todayRate // ignore: cast_nullable_to_non_nullable
              as double,
      tomorrowRate: tomorrowRate == freezed
          ? _value.tomorrowRate
          : tomorrowRate // ignore: cast_nullable_to_non_nullable
              as double,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewRate implements _ViewRate {
  _$_ViewRate(
      {required this.id,
      required this.abbreviation,
      required this.name,
      required this.scale,
      required this.todayRate,
      required this.tomorrowRate,
      required this.isEnabled,
      this.order});

  factory _$_ViewRate.fromJson(Map<String, dynamic> json) =>
      _$$_ViewRateFromJson(json);

  @override
  final int id;
  @override
  final String abbreviation;
  @override
  final String name;
  @override
  final int scale;
  @override
  final double todayRate;
  @override
  final double tomorrowRate;
  @override
  final bool isEnabled;
  @override
  final int? order;

  @override
  String toString() {
    return 'ViewRate(id: $id, abbreviation: $abbreviation, name: $name, scale: $scale, todayRate: $todayRate, tomorrowRate: $tomorrowRate, isEnabled: $isEnabled, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViewRate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.todayRate, todayRate) ||
                other.todayRate == todayRate) &&
            (identical(other.tomorrowRate, tomorrowRate) ||
                other.tomorrowRate == tomorrowRate) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, abbreviation, name, scale,
      todayRate, tomorrowRate, isEnabled, order);

  @JsonKey(ignore: true)
  @override
  _$ViewRateCopyWith<_ViewRate> get copyWith =>
      __$ViewRateCopyWithImpl<_ViewRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewRateToJson(this);
  }
}

abstract class _ViewRate implements ViewRate {
  factory _ViewRate(
      {required int id,
      required String abbreviation,
      required String name,
      required int scale,
      required double todayRate,
      required double tomorrowRate,
      required bool isEnabled,
      int? order}) = _$_ViewRate;

  factory _ViewRate.fromJson(Map<String, dynamic> json) = _$_ViewRate.fromJson;

  @override
  int get id;
  @override
  String get abbreviation;
  @override
  String get name;
  @override
  int get scale;
  @override
  double get todayRate;
  @override
  double get tomorrowRate;
  @override
  bool get isEnabled;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$ViewRateCopyWith<_ViewRate> get copyWith =>
      throw _privateConstructorUsedError;
}
