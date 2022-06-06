import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_state.freezed.dart';
part 'weather_state.g.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required String postalCode,
    required String prefecture,
    required String city,
    required int currentTemperature,
    required int morningTemperature,
    required int afternoonTemperature,
    required int eveningTemperature,
    required int yesterdayMaxTemperature,
    required int maxTemperature,
    required String weather,
    required String iconStr,
  }) = _WeatherState;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);
}