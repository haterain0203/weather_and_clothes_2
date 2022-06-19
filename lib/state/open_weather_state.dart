import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'open_weather_state.freezed.dart';
part 'open_weather_state.g.dart';

@freezed
class OpenWeatherState with _$OpenWeatherState {
  const factory OpenWeatherState({
    @JsonKey(name: 'coord') required OpenWeatherLatLong latLong,
    @JsonKey(name: 'weather') required List<OpenWeatherDescAndIcon> descAndIcon,
  }) = _OpenWeatherState;

  factory OpenWeatherState.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherStateFromJson(json);
}

@freezed
class OpenWeatherLatLong with _$OpenWeatherLatLong {
  const factory OpenWeatherLatLong({
    required double lon,
    required double lat,
  }) = _OpenWeatherLatLong;

  factory OpenWeatherLatLong.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherLatLongFromJson(json);
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