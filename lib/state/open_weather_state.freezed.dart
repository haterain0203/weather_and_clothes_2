// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenWeatherState _$OpenWeatherStateFromJson(Map<String, dynamic> json) {
  return _OpenWeatherState.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherState {
  OpenWeatherCity get city => throw _privateConstructorUsedError;
  List<OpenWeatherData> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherStateCopyWith<OpenWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherStateCopyWith<$Res> {
  factory $OpenWeatherStateCopyWith(
          OpenWeatherState value, $Res Function(OpenWeatherState) then) =
      _$OpenWeatherStateCopyWithImpl<$Res>;
  $Res call({OpenWeatherCity city, List<OpenWeatherData> list});

  $OpenWeatherCityCopyWith<$Res> get city;
}

/// @nodoc
class _$OpenWeatherStateCopyWithImpl<$Res>
    implements $OpenWeatherStateCopyWith<$Res> {
  _$OpenWeatherStateCopyWithImpl(this._value, this._then);

  final OpenWeatherState _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherState) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCity,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherData>,
    ));
  }

  @override
  $OpenWeatherCityCopyWith<$Res> get city {
    return $OpenWeatherCityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenWeatherStateCopyWith<$Res>
    implements $OpenWeatherStateCopyWith<$Res> {
  factory _$$_OpenWeatherStateCopyWith(
          _$_OpenWeatherState value, $Res Function(_$_OpenWeatherState) then) =
      __$$_OpenWeatherStateCopyWithImpl<$Res>;
  @override
  $Res call({OpenWeatherCity city, List<OpenWeatherData> list});

  @override
  $OpenWeatherCityCopyWith<$Res> get city;
}

/// @nodoc
class __$$_OpenWeatherStateCopyWithImpl<$Res>
    extends _$OpenWeatherStateCopyWithImpl<$Res>
    implements _$$_OpenWeatherStateCopyWith<$Res> {
  __$$_OpenWeatherStateCopyWithImpl(
      _$_OpenWeatherState _value, $Res Function(_$_OpenWeatherState) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherState));

  @override
  _$_OpenWeatherState get _value => super._value as _$_OpenWeatherState;

  @override
  $Res call({
    Object? city = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_OpenWeatherState(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCity,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherState
    with DiagnosticableTreeMixin
    implements _OpenWeatherState {
  const _$_OpenWeatherState(
      {required this.city, required final List<OpenWeatherData> list})
      : _list = list;

  factory _$_OpenWeatherState.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherStateFromJson(json);

  @override
  final OpenWeatherCity city;
  final List<OpenWeatherData> _list;
  @override
  List<OpenWeatherData> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherState(city: $city, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherState'))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherState &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherStateCopyWith<_$_OpenWeatherState> get copyWith =>
      __$$_OpenWeatherStateCopyWithImpl<_$_OpenWeatherState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherStateToJson(this);
  }
}

abstract class _OpenWeatherState implements OpenWeatherState {
  const factory _OpenWeatherState(
      {required final OpenWeatherCity city,
      required final List<OpenWeatherData> list}) = _$_OpenWeatherState;

  factory _OpenWeatherState.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherState.fromJson;

  @override
  OpenWeatherCity get city => throw _privateConstructorUsedError;
  @override
  List<OpenWeatherData> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherStateCopyWith<_$_OpenWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherCity _$OpenWeatherCityFromJson(Map<String, dynamic> json) {
  return _OpenWeatherCity.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherCity {
  OpenWeatherCoord get coord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherCityCopyWith<OpenWeatherCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherCityCopyWith<$Res> {
  factory $OpenWeatherCityCopyWith(
          OpenWeatherCity value, $Res Function(OpenWeatherCity) then) =
      _$OpenWeatherCityCopyWithImpl<$Res>;
  $Res call({OpenWeatherCoord coord});

  $OpenWeatherCoordCopyWith<$Res> get coord;
}

/// @nodoc
class _$OpenWeatherCityCopyWithImpl<$Res>
    implements $OpenWeatherCityCopyWith<$Res> {
  _$OpenWeatherCityCopyWithImpl(this._value, this._then);

  final OpenWeatherCity _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherCity) _then;

  @override
  $Res call({
    Object? coord = freezed,
  }) {
    return _then(_value.copyWith(
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCoord,
    ));
  }

  @override
  $OpenWeatherCoordCopyWith<$Res> get coord {
    return $OpenWeatherCoordCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenWeatherCityCopyWith<$Res>
    implements $OpenWeatherCityCopyWith<$Res> {
  factory _$$_OpenWeatherCityCopyWith(
          _$_OpenWeatherCity value, $Res Function(_$_OpenWeatherCity) then) =
      __$$_OpenWeatherCityCopyWithImpl<$Res>;
  @override
  $Res call({OpenWeatherCoord coord});

  @override
  $OpenWeatherCoordCopyWith<$Res> get coord;
}

/// @nodoc
class __$$_OpenWeatherCityCopyWithImpl<$Res>
    extends _$OpenWeatherCityCopyWithImpl<$Res>
    implements _$$_OpenWeatherCityCopyWith<$Res> {
  __$$_OpenWeatherCityCopyWithImpl(
      _$_OpenWeatherCity _value, $Res Function(_$_OpenWeatherCity) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherCity));

  @override
  _$_OpenWeatherCity get _value => super._value as _$_OpenWeatherCity;

  @override
  $Res call({
    Object? coord = freezed,
  }) {
    return _then(_$_OpenWeatherCity(
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCoord,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherCity
    with DiagnosticableTreeMixin
    implements _OpenWeatherCity {
  const _$_OpenWeatherCity({required this.coord});

  factory _$_OpenWeatherCity.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherCityFromJson(json);

  @override
  final OpenWeatherCoord coord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherCity(coord: $coord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherCity'))
      ..add(DiagnosticsProperty('coord', coord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherCity &&
            const DeepCollectionEquality().equals(other.coord, coord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coord));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherCityCopyWith<_$_OpenWeatherCity> get copyWith =>
      __$$_OpenWeatherCityCopyWithImpl<_$_OpenWeatherCity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherCityToJson(this);
  }
}

abstract class _OpenWeatherCity implements OpenWeatherCity {
  const factory _OpenWeatherCity({required final OpenWeatherCoord coord}) =
      _$_OpenWeatherCity;

  factory _OpenWeatherCity.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherCity.fromJson;

  @override
  OpenWeatherCoord get coord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherCityCopyWith<_$_OpenWeatherCity> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherCoord _$OpenWeatherCoordFromJson(Map<String, dynamic> json) {
  return _OpenWeatherCoord.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherCoord {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherCoordCopyWith<OpenWeatherCoord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherCoordCopyWith<$Res> {
  factory $OpenWeatherCoordCopyWith(
          OpenWeatherCoord value, $Res Function(OpenWeatherCoord) then) =
      _$OpenWeatherCoordCopyWithImpl<$Res>;
  $Res call({double lat, double lon});
}

/// @nodoc
class _$OpenWeatherCoordCopyWithImpl<$Res>
    implements $OpenWeatherCoordCopyWith<$Res> {
  _$OpenWeatherCoordCopyWithImpl(this._value, this._then);

  final OpenWeatherCoord _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherCoord) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenWeatherCoordCopyWith<$Res>
    implements $OpenWeatherCoordCopyWith<$Res> {
  factory _$$_OpenWeatherCoordCopyWith(
          _$_OpenWeatherCoord value, $Res Function(_$_OpenWeatherCoord) then) =
      __$$_OpenWeatherCoordCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$_OpenWeatherCoordCopyWithImpl<$Res>
    extends _$OpenWeatherCoordCopyWithImpl<$Res>
    implements _$$_OpenWeatherCoordCopyWith<$Res> {
  __$$_OpenWeatherCoordCopyWithImpl(
      _$_OpenWeatherCoord _value, $Res Function(_$_OpenWeatherCoord) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherCoord));

  @override
  _$_OpenWeatherCoord get _value => super._value as _$_OpenWeatherCoord;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_OpenWeatherCoord(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherCoord
    with DiagnosticableTreeMixin
    implements _OpenWeatherCoord {
  const _$_OpenWeatherCoord({required this.lat, required this.lon});

  factory _$_OpenWeatherCoord.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherCoordFromJson(json);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherCoord(lat: $lat, lon: $lon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherCoord'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherCoord &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherCoordCopyWith<_$_OpenWeatherCoord> get copyWith =>
      __$$_OpenWeatherCoordCopyWithImpl<_$_OpenWeatherCoord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherCoordToJson(this);
  }
}

abstract class _OpenWeatherCoord implements OpenWeatherCoord {
  const factory _OpenWeatherCoord(
      {required final double lat,
      required final double lon}) = _$_OpenWeatherCoord;

  factory _OpenWeatherCoord.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherCoord.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherCoordCopyWith<_$_OpenWeatherCoord> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherData _$OpenWeatherDataFromJson(Map<String, dynamic> json) {
  return _OpenWeatherData.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherData {
  OpenWeatherMain get main => throw _privateConstructorUsedError;
  OpenWeather get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherDataCopyWith<OpenWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherDataCopyWith<$Res> {
  factory $OpenWeatherDataCopyWith(
          OpenWeatherData value, $Res Function(OpenWeatherData) then) =
      _$OpenWeatherDataCopyWithImpl<$Res>;
  $Res call({OpenWeatherMain main, OpenWeather weather});

  $OpenWeatherMainCopyWith<$Res> get main;
  $OpenWeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$OpenWeatherDataCopyWithImpl<$Res>
    implements $OpenWeatherDataCopyWith<$Res> {
  _$OpenWeatherDataCopyWithImpl(this._value, this._then);

  final OpenWeatherData _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherData) _then;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as OpenWeatherMain,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as OpenWeather,
    ));
  }

  @override
  $OpenWeatherMainCopyWith<$Res> get main {
    return $OpenWeatherMainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $OpenWeatherCopyWith<$Res> get weather {
    return $OpenWeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenWeatherDataCopyWith<$Res>
    implements $OpenWeatherDataCopyWith<$Res> {
  factory _$$_OpenWeatherDataCopyWith(
          _$_OpenWeatherData value, $Res Function(_$_OpenWeatherData) then) =
      __$$_OpenWeatherDataCopyWithImpl<$Res>;
  @override
  $Res call({OpenWeatherMain main, OpenWeather weather});

  @override
  $OpenWeatherMainCopyWith<$Res> get main;
  @override
  $OpenWeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_OpenWeatherDataCopyWithImpl<$Res>
    extends _$OpenWeatherDataCopyWithImpl<$Res>
    implements _$$_OpenWeatherDataCopyWith<$Res> {
  __$$_OpenWeatherDataCopyWithImpl(
      _$_OpenWeatherData _value, $Res Function(_$_OpenWeatherData) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherData));

  @override
  _$_OpenWeatherData get _value => super._value as _$_OpenWeatherData;

  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_OpenWeatherData(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as OpenWeatherMain,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as OpenWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherData
    with DiagnosticableTreeMixin
    implements _OpenWeatherData {
  const _$_OpenWeatherData({required this.main, required this.weather});

  factory _$_OpenWeatherData.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherDataFromJson(json);

  @override
  final OpenWeatherMain main;
  @override
  final OpenWeather weather;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherData(main: $main, weather: $weather)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherData'))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('weather', weather));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherData &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherDataCopyWith<_$_OpenWeatherData> get copyWith =>
      __$$_OpenWeatherDataCopyWithImpl<_$_OpenWeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherDataToJson(this);
  }
}

abstract class _OpenWeatherData implements OpenWeatherData {
  const factory _OpenWeatherData(
      {required final OpenWeatherMain main,
      required final OpenWeather weather}) = _$_OpenWeatherData;

  factory _OpenWeatherData.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherData.fromJson;

  @override
  OpenWeatherMain get main => throw _privateConstructorUsedError;
  @override
  OpenWeather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherDataCopyWith<_$_OpenWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherMain _$OpenWeatherMainFromJson(Map<String, dynamic> json) {
  return _OpenWeatherMain.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherMain {
  @JsonKey(name: 'feels_like')
  double get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherMainCopyWith<OpenWeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherMainCopyWith<$Res> {
  factory $OpenWeatherMainCopyWith(
          OpenWeatherMain value, $Res Function(OpenWeatherMain) then) =
      _$OpenWeatherMainCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'feels_like') double temp});
}

/// @nodoc
class _$OpenWeatherMainCopyWithImpl<$Res>
    implements $OpenWeatherMainCopyWith<$Res> {
  _$OpenWeatherMainCopyWithImpl(this._value, this._then);

  final OpenWeatherMain _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherMain) _then;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenWeatherMainCopyWith<$Res>
    implements $OpenWeatherMainCopyWith<$Res> {
  factory _$$_OpenWeatherMainCopyWith(
          _$_OpenWeatherMain value, $Res Function(_$_OpenWeatherMain) then) =
      __$$_OpenWeatherMainCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'feels_like') double temp});
}

/// @nodoc
class __$$_OpenWeatherMainCopyWithImpl<$Res>
    extends _$OpenWeatherMainCopyWithImpl<$Res>
    implements _$$_OpenWeatherMainCopyWith<$Res> {
  __$$_OpenWeatherMainCopyWithImpl(
      _$_OpenWeatherMain _value, $Res Function(_$_OpenWeatherMain) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherMain));

  @override
  _$_OpenWeatherMain get _value => super._value as _$_OpenWeatherMain;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_$_OpenWeatherMain(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherMain
    with DiagnosticableTreeMixin
    implements _OpenWeatherMain {
  const _$_OpenWeatherMain({@JsonKey(name: 'feels_like') required this.temp});

  factory _$_OpenWeatherMain.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherMainFromJson(json);

  @override
  @JsonKey(name: 'feels_like')
  final double temp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherMain(temp: $temp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherMain'))
      ..add(DiagnosticsProperty('temp', temp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherMain &&
            const DeepCollectionEquality().equals(other.temp, temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(temp));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherMainCopyWith<_$_OpenWeatherMain> get copyWith =>
      __$$_OpenWeatherMainCopyWithImpl<_$_OpenWeatherMain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherMainToJson(this);
  }
}

abstract class _OpenWeatherMain implements OpenWeatherMain {
  const factory _OpenWeatherMain(
          {@JsonKey(name: 'feels_like') required final double temp}) =
      _$_OpenWeatherMain;

  factory _OpenWeatherMain.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherMain.fromJson;

  @override
  @JsonKey(name: 'feels_like')
  double get temp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherMainCopyWith<_$_OpenWeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeather _$OpenWeatherFromJson(Map<String, dynamic> json) {
  return _OpenWeather.fromJson(json);
}

/// @nodoc
mixin _$OpenWeather {
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherCopyWith<OpenWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherCopyWith<$Res> {
  factory $OpenWeatherCopyWith(
          OpenWeather value, $Res Function(OpenWeather) then) =
      _$OpenWeatherCopyWithImpl<$Res>;
  $Res call({String description, String icon});
}

/// @nodoc
class _$OpenWeatherCopyWithImpl<$Res> implements $OpenWeatherCopyWith<$Res> {
  _$OpenWeatherCopyWithImpl(this._value, this._then);

  final OpenWeather _value;
  // ignore: unused_field
  final $Res Function(OpenWeather) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenWeatherCopyWith<$Res>
    implements $OpenWeatherCopyWith<$Res> {
  factory _$$_OpenWeatherCopyWith(
          _$_OpenWeather value, $Res Function(_$_OpenWeather) then) =
      __$$_OpenWeatherCopyWithImpl<$Res>;
  @override
  $Res call({String description, String icon});
}

/// @nodoc
class __$$_OpenWeatherCopyWithImpl<$Res> extends _$OpenWeatherCopyWithImpl<$Res>
    implements _$$_OpenWeatherCopyWith<$Res> {
  __$$_OpenWeatherCopyWithImpl(
      _$_OpenWeather _value, $Res Function(_$_OpenWeather) _then)
      : super(_value, (v) => _then(v as _$_OpenWeather));

  @override
  _$_OpenWeather get _value => super._value as _$_OpenWeather;

  @override
  $Res call({
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_OpenWeather(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeather with DiagnosticableTreeMixin implements _OpenWeather {
  const _$_OpenWeather({required this.description, required this.icon});

  factory _$_OpenWeather.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherFromJson(json);

  @override
  final String description;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeather(description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeather'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeather &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherCopyWith<_$_OpenWeather> get copyWith =>
      __$$_OpenWeatherCopyWithImpl<_$_OpenWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherToJson(this);
  }
}

abstract class _OpenWeather implements OpenWeather {
  const factory _OpenWeather(
      {required final String description,
      required final String icon}) = _$_OpenWeather;

  factory _OpenWeather.fromJson(Map<String, dynamic> json) =
      _$_OpenWeather.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherCopyWith<_$_OpenWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
