import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'open_meteo_state.freezed.dart';
part 'open_meteo_state.g.dart';

@freezed
class OpenMeteoState with _$OpenMeteoState {
  const factory OpenMeteoState({
    required OpenMeteoHourly hourly,
    required OpenMeteoDaily daily,
  }) = _OpenMeteoState;

  factory OpenMeteoState.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoStateFromJson(json);
}

@freezed
class OpenMeteoHourly with _$OpenMeteoHourly {
  const factory OpenMeteoHourly({
    @JsonKey(name: 'apparent_temperature') required List apparentTemperature,
  }) = _OpenMeteoHourly;

  factory OpenMeteoHourly.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoHourlyFromJson(json);
}

@freezed
class OpenMeteoDaily with _$OpenMeteoDaily {
  const factory OpenMeteoDaily({
    @JsonKey(name: 'apparent_temperature_max') required List apparentTemperatureMax,
  }) = _OpenMeteoDaily;

  factory OpenMeteoDaily.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoDailyFromJson(json);
}
