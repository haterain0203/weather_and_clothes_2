// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherState _$$_WeatherStateFromJson(Map<String, dynamic> json) =>
    _$_WeatherState(
      postalCode: json['postalCode'] as String,
      prefecture: json['prefecture'] as String,
      city: json['city'] as String,
      currentTemperature: json['currentTemperature'] as int,
      maxTemperature: json['maxTemperature'] as int,
      weather: json['weather'] as String,
      iconStr: json['iconStr'] as String,
      yesterdayMaxTemperature: json['yesterdayMaxTemperature'] as int,
    );

Map<String, dynamic> _$$_WeatherStateToJson(_$_WeatherState instance) =>
    <String, dynamic>{
      'postalCode': instance.postalCode,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'currentTemperature': instance.currentTemperature,
      'maxTemperature': instance.maxTemperature,
      'weather': instance.weather,
      'iconStr': instance.iconStr,
      'yesterdayMaxTemperature': instance.yesterdayMaxTemperature,
    };
