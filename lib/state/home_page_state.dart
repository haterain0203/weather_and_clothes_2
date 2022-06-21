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
    //TODO OpenWeatherからは、当日の朝昼夜の天気情報と、翌日・翌々日の天気情報を取得するようにする（過去データ以外）
    required OpenWeatherState openWeather,
    //TODO OpenMeteoからは過去データ取得のみを行うように修正する
    required OpenMeteoState openMeteo,
  }) = _HomePageState;

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}