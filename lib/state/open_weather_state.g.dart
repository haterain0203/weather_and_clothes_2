// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenWeatherState _$$_OpenWeatherStateFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherState(
      latLong:
          OpenWeatherLatLong.fromJson(json['coord'] as Map<String, dynamic>),
      descAndIcon: (json['weather'] as List<dynamic>)
          .map(
              (e) => OpenWeatherDescAndIcon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OpenWeatherStateToJson(_$_OpenWeatherState instance) =>
    <String, dynamic>{
      'coord': instance.latLong,
      'weather': instance.descAndIcon,
    };

_$_OpenWeatherLatLong _$$_OpenWeatherLatLongFromJson(
        Map<String, dynamic> json) =>
    _$_OpenWeatherLatLong(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OpenWeatherLatLongToJson(
        _$_OpenWeatherLatLong instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$_OpenWeatherDescAndIcon _$$_OpenWeatherDescAndIconFromJson(
        Map<String, dynamic> json) =>
    _$_OpenWeatherDescAndIcon(
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_OpenWeatherDescAndIconToJson(
        _$_OpenWeatherDescAndIcon instance) =>
    <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
    };
