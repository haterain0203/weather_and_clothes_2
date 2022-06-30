import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'open_weather_state.freezed.dart';
part 'open_weather_state.g.dart';

@freezed
class OpenWeatherState with _$OpenWeatherState {
  const factory OpenWeatherState({
    required OpenWeatherCity city,
    required List<OpenWeatherData> list,
  }) = _OpenWeatherState;

  factory OpenWeatherState.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherStateFromJson(json);
}

@freezed
class OpenWeatherCity with _$OpenWeatherCity {
  const factory OpenWeatherCity({
    required OpenWeatherCoord coord,
  }) = _OpenWeatherCity;

  factory OpenWeatherCity.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherCityFromJson(json);
}

@freezed
class OpenWeatherCoord with _$OpenWeatherCoord {
  const factory OpenWeatherCoord({
    required double lat,
    required double lon,
  }) = _OpenWeatherCoord;

  factory OpenWeatherCoord.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherCoordFromJson(json);
}

@freezed
class OpenWeatherData with _$OpenWeatherData {
  const factory OpenWeatherData({
    required OpenWeatherMain main,
    required OpenWeather weather,
  }) = _OpenWeatherData;

  factory OpenWeatherData.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherDataFromJson(json);
}

@freezed
class OpenWeatherMain with _$OpenWeatherMain {
  const factory OpenWeatherMain({
    @JsonKey(name: 'feels_like') required double temp,
  }) = _OpenWeatherMain;

  factory OpenWeatherMain.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherMainFromJson(json);
}

@freezed
class OpenWeather with _$OpenWeather {
  const factory OpenWeather({
    required String description,
    required String icon,
  }) = _OpenWeather;

  factory OpenWeather.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherFromJson(json);
}