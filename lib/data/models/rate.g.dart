// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rate _$$_RateFromJson(Map<String, dynamic> json) => _$_Rate(
      id: json['Cur_ID'] as int,
      date: DateTime.parse(json['Date'] as String),
      abbreviation: json['Cur_Abbreviation'] as String,
      name: json['Cur_Name'] as String,
      scale: json['Cur_Scale'] as int,
      rate: (json['Cur_OfficialRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RateToJson(_$_Rate instance) => <String, dynamic>{
      'Cur_ID': instance.id,
      'Date': instance.date.toIso8601String(),
      'Cur_Abbreviation': instance.abbreviation,
      'Cur_Name': instance.name,
      'Cur_Scale': instance.scale,
      'Cur_OfficialRate': instance.rate,
    };
