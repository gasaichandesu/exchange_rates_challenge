// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViewRate _$$_ViewRateFromJson(Map<String, dynamic> json) => _$_ViewRate(
      id: json['id'] as int,
      abbreviation: json['abbreviation'] as String,
      name: json['name'] as String,
      scale: json['scale'] as int,
      todayRate: (json['todayRate'] as num).toDouble(),
      tomorrowRate: (json['tomorrowRate'] as num).toDouble(),
      isEnabled: json['isEnabled'] as bool,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$$_ViewRateToJson(_$_ViewRate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'abbreviation': instance.abbreviation,
      'name': instance.name,
      'scale': instance.scale,
      'todayRate': instance.todayRate,
      'tomorrowRate': instance.tomorrowRate,
      'isEnabled': instance.isEnabled,
      'order': instance.order,
    };
