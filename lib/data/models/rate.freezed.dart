// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rate _$RateFromJson(Map<String, dynamic> json) {
  return _Rate.fromJson(json);
}

/// @nodoc
class _$RateTearOff {
  const _$RateTearOff();

  _Rate call(
      {@JsonKey(name: 'Cur_ID') required int id,
      @JsonKey(name: 'Date') required DateTime date,
      @JsonKey(name: 'Cur_Abbreviation') required String abbreviation,
      @JsonKey(name: 'Cur_Name') required String name,
      @JsonKey(name: 'Cur_Scale') required int scale,
      @JsonKey(name: 'Cur_OfficialRate') required double rate}) {
    return _Rate(
      id: id,
      date: date,
      abbreviation: abbreviation,
      name: name,
      scale: scale,
      rate: rate,
    );
  }

  Rate fromJson(Map<String, Object?> json) {
    return Rate.fromJson(json);
  }
}

/// @nodoc
const $Rate = _$RateTearOff();

/// @nodoc
mixin _$Rate {
  @JsonKey(name: 'Cur_ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Abbreviation')
  String get abbreviation => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Scale')
  int get scale => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_OfficialRate')
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateCopyWith<Rate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateCopyWith<$Res> {
  factory $RateCopyWith(Rate value, $Res Function(Rate) then) =
      _$RateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Cur_ID') int id,
      @JsonKey(name: 'Date') DateTime date,
      @JsonKey(name: 'Cur_Abbreviation') String abbreviation,
      @JsonKey(name: 'Cur_Name') String name,
      @JsonKey(name: 'Cur_Scale') int scale,
      @JsonKey(name: 'Cur_OfficialRate') double rate});
}

/// @nodoc
class _$RateCopyWithImpl<$Res> implements $RateCopyWith<$Res> {
  _$RateCopyWithImpl(this._value, this._then);

  final Rate _value;
  // ignore: unused_field
  final $Res Function(Rate) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? abbreviation = freezed,
    Object? name = freezed,
    Object? scale = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RateCopyWith<$Res> implements $RateCopyWith<$Res> {
  factory _$RateCopyWith(_Rate value, $Res Function(_Rate) then) =
      __$RateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Cur_ID') int id,
      @JsonKey(name: 'Date') DateTime date,
      @JsonKey(name: 'Cur_Abbreviation') String abbreviation,
      @JsonKey(name: 'Cur_Name') String name,
      @JsonKey(name: 'Cur_Scale') int scale,
      @JsonKey(name: 'Cur_OfficialRate') double rate});
}

/// @nodoc
class __$RateCopyWithImpl<$Res> extends _$RateCopyWithImpl<$Res>
    implements _$RateCopyWith<$Res> {
  __$RateCopyWithImpl(_Rate _value, $Res Function(_Rate) _then)
      : super(_value, (v) => _then(v as _Rate));

  @override
  _Rate get _value => super._value as _Rate;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? abbreviation = freezed,
    Object? name = freezed,
    Object? scale = freezed,
    Object? rate = freezed,
  }) {
    return _then(_Rate(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rate implements _Rate {
  _$_Rate(
      {@JsonKey(name: 'Cur_ID') required this.id,
      @JsonKey(name: 'Date') required this.date,
      @JsonKey(name: 'Cur_Abbreviation') required this.abbreviation,
      @JsonKey(name: 'Cur_Name') required this.name,
      @JsonKey(name: 'Cur_Scale') required this.scale,
      @JsonKey(name: 'Cur_OfficialRate') required this.rate});

  factory _$_Rate.fromJson(Map<String, dynamic> json) => _$$_RateFromJson(json);

  @override
  @JsonKey(name: 'Cur_ID')
  final int id;
  @override
  @JsonKey(name: 'Date')
  final DateTime date;
  @override
  @JsonKey(name: 'Cur_Abbreviation')
  final String abbreviation;
  @override
  @JsonKey(name: 'Cur_Name')
  final String name;
  @override
  @JsonKey(name: 'Cur_Scale')
  final int scale;
  @override
  @JsonKey(name: 'Cur_OfficialRate')
  final double rate;

  @override
  String toString() {
    return 'Rate(id: $id, date: $date, abbreviation: $abbreviation, name: $name, scale: $scale, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, abbreviation, name, scale, rate);

  @JsonKey(ignore: true)
  @override
  _$RateCopyWith<_Rate> get copyWith =>
      __$RateCopyWithImpl<_Rate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RateToJson(this);
  }
}

abstract class _Rate implements Rate {
  factory _Rate(
      {@JsonKey(name: 'Cur_ID') required int id,
      @JsonKey(name: 'Date') required DateTime date,
      @JsonKey(name: 'Cur_Abbreviation') required String abbreviation,
      @JsonKey(name: 'Cur_Name') required String name,
      @JsonKey(name: 'Cur_Scale') required int scale,
      @JsonKey(name: 'Cur_OfficialRate') required double rate}) = _$_Rate;

  factory _Rate.fromJson(Map<String, dynamic> json) = _$_Rate.fromJson;

  @override
  @JsonKey(name: 'Cur_ID')
  int get id;
  @override
  @JsonKey(name: 'Date')
  DateTime get date;
  @override
  @JsonKey(name: 'Cur_Abbreviation')
  String get abbreviation;
  @override
  @JsonKey(name: 'Cur_Name')
  String get name;
  @override
  @JsonKey(name: 'Cur_Scale')
  int get scale;
  @override
  @JsonKey(name: 'Cur_OfficialRate')
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$RateCopyWith<_Rate> get copyWith => throw _privateConstructorUsedError;
}
