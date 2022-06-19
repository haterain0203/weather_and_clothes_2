// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoState _$$_OpenMeteoStateFromJson(Map<String, dynamic> json) =>
    _$_OpenMeteoState(
      hourly: OpenMeteoHourly.fromJson(json['hourly'] as Map<String, dynamic>),
      daily: OpenMeteoDaily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenMeteoStateToJson(_$_OpenMeteoState instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_$_OpenMeteoHourly _$$_OpenMeteoHourlyFromJson(Map<String, dynamic> json) =>
    _$_OpenMeteoHourly(
      apparentTemperature: json['apparent_temperature'] as List<dynamic>,
    );

Map<String, dynamic> _$$_OpenMeteoHourlyToJson(_$_OpenMeteoHourly instance) =>
    <String, dynamic>{
      'apparent_temperature': instance.apparentTemperature,
    };

_$_OpenMeteoDaily _$$_OpenMeteoDailyFromJson(Map<String, dynamic> json) =>
    _$_OpenMeteoDaily(
      apparentTemperatureMax: json['apparent_temperature_max'] as List<dynamic>,
    );

Map<String, dynamic> _$$_OpenMeteoDailyToJson(_$_OpenMeteoDaily instance) =>
    <String, dynamic>{
      'apparent_temperature_max': instance.apparentTemperatureMax,
    };
