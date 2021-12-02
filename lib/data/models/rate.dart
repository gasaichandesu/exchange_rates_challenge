import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate.freezed.dart';
part 'rate.g.dart';

@freezed
class Rate with _$Rate {
  factory Rate({
    @JsonKey(name: 'Cur_ID') required int id,
    @JsonKey(name: 'Date') required DateTime date,
    @JsonKey(name: 'Cur_Abbreviation') required String abbreviation,
    @JsonKey(name: 'Cur_Name') required String name,
    @JsonKey(name: 'Cur_Scale') required int scale,
    @JsonKey(name: 'Cur_OfficialRate') required double rate,
  }) = _Rate;

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);
}
