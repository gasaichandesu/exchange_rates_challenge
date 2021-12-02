import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_rate.freezed.dart';

@freezed
class ViewRate with _$ViewRate {
  factory ViewRate({
    required int id,
    required String abbreviation,
    required String name,
    required int scale,
    required double todayRate,
    required double tomorrowRate,
    int? order,
  }) = _ViewRate;
}
