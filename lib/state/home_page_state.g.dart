// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePageState _$$_HomePageStateFromJson(Map<String, dynamic> json) =>
    _$_HomePageState(
      address: AddressState.fromJson(json['address'] as Map<String, dynamic>),
      openWeather: OpenWeatherState.fromJson(
          json['openWeather'] as Map<String, dynamic>),
      openMeteo:
          OpenMeteoState.fromJson(json['openMeteo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HomePageStateToJson(_$_HomePageState instance) =>
    <String, dynamic>{
      'address': instance.address,
      'openWeather': instance.openWeather,
      'openMeteo': instance.openMeteo,
    };
