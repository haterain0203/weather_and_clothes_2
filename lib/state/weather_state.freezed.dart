// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  return _WeatherState.fromJson(json);
}

/// @nodoc
mixin _$WeatherState {
  String get postalCode => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get temperature => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  String get iconStr => throw _privateConstructorUsedError;
  int get yesterdayMaxTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {String postalCode,
      String prefecture,
      String city,
      int temperature,
      String weather,
      String iconStr,
      int yesterdayMaxTemperature});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? postalCode = freezed,
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? temperature = freezed,
    Object? weather = freezed,
    Object? iconStr = freezed,
    Object? yesterdayMaxTemperature = freezed,
  }) {
    return _then(_value.copyWith(
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      iconStr: iconStr == freezed
          ? _value.iconStr
          : iconStr // ignore: cast_nullable_to_non_nullable
              as String,
      yesterdayMaxTemperature: yesterdayMaxTemperature == freezed
          ? _value.yesterdayMaxTemperature
          : yesterdayMaxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String postalCode,
      String prefecture,
      String city,
      int temperature,
      String weather,
      String iconStr,
      int yesterdayMaxTemperature});
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, (v) => _then(v as _$_WeatherState));

  @override
  _$_WeatherState get _value => super._value as _$_WeatherState;

  @override
  $Res call({
    Object? postalCode = freezed,
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? temperature = freezed,
    Object? weather = freezed,
    Object? iconStr = freezed,
    Object? yesterdayMaxTemperature = freezed,
  }) {
    return _then(_$_WeatherState(
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      iconStr: iconStr == freezed
          ? _value.iconStr
          : iconStr // ignore: cast_nullable_to_non_nullable
              as String,
      yesterdayMaxTemperature: yesterdayMaxTemperature == freezed
          ? _value.yesterdayMaxTemperature
          : yesterdayMaxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherState with DiagnosticableTreeMixin implements _WeatherState {
  const _$_WeatherState(
      {required this.postalCode,
      required this.prefecture,
      required this.city,
      required this.temperature,
      required this.weather,
      required this.iconStr,
      required this.yesterdayMaxTemperature});

  factory _$_WeatherState.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStateFromJson(json);

  @override
  final String postalCode;
  @override
  final String prefecture;
  @override
  final String city;
  @override
  final int temperature;
  @override
  final String weather;
  @override
  final String iconStr;
  @override
  final int yesterdayMaxTemperature;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherState(postalCode: $postalCode, prefecture: $prefecture, city: $city, temperature: $temperature, weather: $weather, iconStr: $iconStr, yesterdayMaxTemperature: $yesterdayMaxTemperature)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherState'))
      ..add(DiagnosticsProperty('postalCode', postalCode))
      ..add(DiagnosticsProperty('prefecture', prefecture))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('iconStr', iconStr))
      ..add(DiagnosticsProperty(
          'yesterdayMaxTemperature', yesterdayMaxTemperature));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality()
                .equals(other.prefecture, prefecture) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.iconStr, iconStr) &&
            const DeepCollectionEquality().equals(
                other.yesterdayMaxTemperature, yesterdayMaxTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(prefecture),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(iconStr),
      const DeepCollectionEquality().hash(yesterdayMaxTemperature));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStateToJson(this);
  }
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required final String postalCode,
      required final String prefecture,
      required final String city,
      required final int temperature,
      required final String weather,
      required final String iconStr,
      required final int yesterdayMaxTemperature}) = _$_WeatherState;

  factory _WeatherState.fromJson(Map<String, dynamic> json) =
      _$_WeatherState.fromJson;

  @override
  String get postalCode => throw _privateConstructorUsedError;
  @override
  String get prefecture => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  int get temperature => throw _privateConstructorUsedError;
  @override
  String get weather => throw _privateConstructorUsedError;
  @override
  String get iconStr => throw _privateConstructorUsedError;
  @override
  int get yesterdayMaxTemperature => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
