import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'open_weather_state.freezed.dart';
part 'open_weather_state.g.dart';

@freezed
class OpenWeatherState with _$OpenWeatherState {
  const factory OpenWeatherState({
    @JsonKey(name: 'city') required OpenWeatherCity city,
    @JsonKey(name: 'weather') required List<OpenWeatherDescAndIcon> descAndIcon,
  }) = _OpenWeatherState;

  factory OpenWeatherState.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherStateFromJson(json);
}

@freezed
class OpenWeatherCity with _$OpenWeatherCity {
  const factory OpenWeatherCity({
    required OpenWeahterCoord coord,
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
class OpenWeatherDescAndIcon with _$OpenWeatherDescAndIcon {
  const factory OpenWeatherDescAndIcon({
    required String description,
    required String icon,
  }) = _OpenWeatherDescAndIcon;

  factory OpenWeatherDescAndIcon.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherDescAndIconFromJson(json);
}