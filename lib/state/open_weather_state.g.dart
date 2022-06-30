// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenWeatherState _$$_OpenWeatherStateFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherState(
      city: OpenWeatherCity.fromJson(json['city'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => OpenWeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OpenWeatherStateToJson(_$_OpenWeatherState instance) =>
    <String, dynamic>{
      'city': instance.city,
      'list': instance.list,
    };

_$_OpenWeatherCity _$$_OpenWeatherCityFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherCity(
      coord: OpenWeatherCoord.fromJson(json['coord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenWeatherCityToJson(_$_OpenWeatherCity instance) =>
    <String, dynamic>{
      'coord': instance.coord,
    };

_$_OpenWeatherCoord _$$_OpenWeatherCoordFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherCoord(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OpenWeatherCoordToJson(_$_OpenWeatherCoord instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

_$_OpenWeatherData _$$_OpenWeatherDataFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherData(
      main: OpenWeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      weather: OpenWeather.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenWeatherDataToJson(_$_OpenWeatherData instance) =>
    <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
    };

_$_OpenWeatherMain _$$_OpenWeatherMainFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherMain(
      temp: (json['feels_like'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OpenWeatherMainToJson(_$_OpenWeatherMain instance) =>
    <String, dynamic>{
      'feels_like': instance.temp,
    };

_$_OpenWeather _$$_OpenWeatherFromJson(Map<String, dynamic> json) =>
    _$_OpenWeather(
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_OpenWeatherToJson(_$_OpenWeather instance) =>
    <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
    };
