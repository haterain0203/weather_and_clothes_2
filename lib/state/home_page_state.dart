import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_and_clothes_2/state/address_state.dart';
import 'package:weather_and_clothes_2/state/open_meteo_state.dart';
import 'package:weather_and_clothes_2/state/open_weather_state.dart';

part 'home_page_state.freezed.dart';
part 'home_page_state.g.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required AddressState address,
    required OpenWeatherState openWeather,
    required OpenMeteoState openMeteo,
  }) = _HomePageState;

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}