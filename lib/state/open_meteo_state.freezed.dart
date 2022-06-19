// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_meteo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMeteoState _$OpenMeteoStateFromJson(Map<String, dynamic> json) {
  return _OpenMeteoState.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoState {
  OpenMeteoHourly get hourly => throw _privateConstructorUsedError;
  OpenMeteoDaily get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoStateCopyWith<OpenMeteoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoStateCopyWith<$Res> {
  factory $OpenMeteoStateCopyWith(
          OpenMeteoState value, $Res Function(OpenMeteoState) then) =
      _$OpenMeteoStateCopyWithImpl<$Res>;
  $Res call({OpenMeteoHourly hourly, OpenMeteoDaily daily});

  $OpenMeteoHourlyCopyWith<$Res> get hourly;
  $OpenMeteoDailyCopyWith<$Res> get daily;
}

/// @nodoc
class _$OpenMeteoStateCopyWithImpl<$Res>
    implements $OpenMeteoStateCopyWith<$Res> {
  _$OpenMeteoStateCopyWithImpl(this._value, this._then);

  final OpenMeteoState _value;
  // ignore: unused_field
  final $Res Function(OpenMeteoState) _then;

  @override
  $Res call({
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as OpenMeteoHourly,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as OpenMeteoDaily,
    ));
  }

  @override
  $OpenMeteoHourlyCopyWith<$Res> get hourly {
    return $OpenMeteoHourlyCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value));
    });
  }

  @override
  $OpenMeteoDailyCopyWith<$Res> get daily {
    return $OpenMeteoDailyCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenMeteoStateCopyWith<$Res>
    implements $OpenMeteoStateCopyWith<$Res> {
  factory _$$_OpenMeteoStateCopyWith(
          _$_OpenMeteoState value, $Res Function(_$_OpenMeteoState) then) =
      __$$_OpenMeteoStateCopyWithImpl<$Res>;
  @override
  $Res call({OpenMeteoHourly hourly, OpenMeteoDaily daily});

  @override
  $OpenMeteoHourlyCopyWith<$Res> get hourly;
  @override
  $OpenMeteoDailyCopyWith<$Res> get daily;
}

/// @nodoc
class __$$_OpenMeteoStateCopyWithImpl<$Res>
    extends _$OpenMeteoStateCopyWithImpl<$Res>
    implements _$$_OpenMeteoStateCopyWith<$Res> {
  __$$_OpenMeteoStateCopyWithImpl(
      _$_OpenMeteoState _value, $Res Function(_$_OpenMeteoState) _then)
      : super(_value, (v) => _then(v as _$_OpenMeteoState));

  @override
  _$_OpenMeteoState get _value => super._value as _$_OpenMeteoState;

  @override
  $Res call({
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$_OpenMeteoState(
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as OpenMeteoHourly,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as OpenMeteoDaily,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoState
    with DiagnosticableTreeMixin
    implements _OpenMeteoState {
  const _$_OpenMeteoState({required this.hourly, required this.daily});

  factory _$_OpenMeteoState.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoStateFromJson(json);

  @override
  final OpenMeteoHourly hourly;
  @override
  final OpenMeteoDaily daily;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMeteoState(hourly: $hourly, daily: $daily)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMeteoState'))
      ..add(DiagnosticsProperty('hourly', hourly))
      ..add(DiagnosticsProperty('daily', daily));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoState &&
            const DeepCollectionEquality().equals(other.hourly, hourly) &&
            const DeepCollectionEquality().equals(other.daily, daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hourly),
      const DeepCollectionEquality().hash(daily));

  @JsonKey(ignore: true)
  @override
  _$$_OpenMeteoStateCopyWith<_$_OpenMeteoState> get copyWith =>
      __$$_OpenMeteoStateCopyWithImpl<_$_OpenMeteoState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoStateToJson(this);
  }
}

abstract class _OpenMeteoState implements OpenMeteoState {
  const factory _OpenMeteoState(
      {required final OpenMeteoHourly hourly,
      required final OpenMeteoDaily daily}) = _$_OpenMeteoState;

  factory _OpenMeteoState.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoState.fromJson;

  @override
  OpenMeteoHourly get hourly => throw _privateConstructorUsedError;
  @override
  OpenMeteoDaily get daily => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoStateCopyWith<_$_OpenMeteoState> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenMeteoHourly _$OpenMeteoHourlyFromJson(Map<String, dynamic> json) {
  return _OpenMeteoHourly.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoHourly {
  @JsonKey(name: 'apparent_temperature')
  List<dynamic> get apparentTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoHourlyCopyWith<OpenMeteoHourly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoHourlyCopyWith<$Res> {
  factory $OpenMeteoHourlyCopyWith(
          OpenMeteoHourly value, $Res Function(OpenMeteoHourly) then) =
      _$OpenMeteoHourlyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'apparent_temperature')
          List<dynamic> apparentTemperature});
}

/// @nodoc
class _$OpenMeteoHourlyCopyWithImpl<$Res>
    implements $OpenMeteoHourlyCopyWith<$Res> {
  _$OpenMeteoHourlyCopyWithImpl(this._value, this._then);

  final OpenMeteoHourly _value;
  // ignore: unused_field
  final $Res Function(OpenMeteoHourly) _then;

  @override
  $Res call({
    Object? apparentTemperature = freezed,
  }) {
    return _then(_value.copyWith(
      apparentTemperature: apparentTemperature == freezed
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenMeteoHourlyCopyWith<$Res>
    implements $OpenMeteoHourlyCopyWith<$Res> {
  factory _$$_OpenMeteoHourlyCopyWith(
          _$_OpenMeteoHourly value, $Res Function(_$_OpenMeteoHourly) then) =
      __$$_OpenMeteoHourlyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'apparent_temperature')
          List<dynamic> apparentTemperature});
}

/// @nodoc
class __$$_OpenMeteoHourlyCopyWithImpl<$Res>
    extends _$OpenMeteoHourlyCopyWithImpl<$Res>
    implements _$$_OpenMeteoHourlyCopyWith<$Res> {
  __$$_OpenMeteoHourlyCopyWithImpl(
      _$_OpenMeteoHourly _value, $Res Function(_$_OpenMeteoHourly) _then)
      : super(_value, (v) => _then(v as _$_OpenMeteoHourly));

  @override
  _$_OpenMeteoHourly get _value => super._value as _$_OpenMeteoHourly;

  @override
  $Res call({
    Object? apparentTemperature = freezed,
  }) {
    return _then(_$_OpenMeteoHourly(
      apparentTemperature: apparentTemperature == freezed
          ? _value._apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoHourly
    with DiagnosticableTreeMixin
    implements _OpenMeteoHourly {
  const _$_OpenMeteoHourly(
      {@JsonKey(name: 'apparent_temperature')
          required final List<dynamic> apparentTemperature})
      : _apparentTemperature = apparentTemperature;

  factory _$_OpenMeteoHourly.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoHourlyFromJson(json);

  final List<dynamic> _apparentTemperature;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<dynamic> get apparentTemperature {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperature);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMeteoHourly(apparentTemperature: $apparentTemperature)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMeteoHourly'))
      ..add(DiagnosticsProperty('apparentTemperature', apparentTemperature));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoHourly &&
            const DeepCollectionEquality()
                .equals(other._apparentTemperature, _apparentTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_apparentTemperature));

  @JsonKey(ignore: true)
  @override
  _$$_OpenMeteoHourlyCopyWith<_$_OpenMeteoHourly> get copyWith =>
      __$$_OpenMeteoHourlyCopyWithImpl<_$_OpenMeteoHourly>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoHourlyToJson(this);
  }
}

abstract class _OpenMeteoHourly implements OpenMeteoHourly {
  const factory _OpenMeteoHourly(
          {@JsonKey(name: 'apparent_temperature')
              required final List<dynamic> apparentTemperature}) =
      _$_OpenMeteoHourly;

  factory _OpenMeteoHourly.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoHourly.fromJson;

  @override
  @JsonKey(name: 'apparent_temperature')
  List<dynamic> get apparentTemperature => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoHourlyCopyWith<_$_OpenMeteoHourly> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenMeteoDaily _$OpenMeteoDailyFromJson(Map<String, dynamic> json) {
  return _OpenMeteoDaily.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoDaily {
  @JsonKey(name: 'apparent_temperature_max')
  List<dynamic> get apparentTemperatureMax =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoDailyCopyWith<OpenMeteoDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoDailyCopyWith<$Res> {
  factory $OpenMeteoDailyCopyWith(
          OpenMeteoDaily value, $Res Function(OpenMeteoDaily) then) =
      _$OpenMeteoDailyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'apparent_temperature_max')
          List<dynamic> apparentTemperatureMax});
}

/// @nodoc
class _$OpenMeteoDailyCopyWithImpl<$Res>
    implements $OpenMeteoDailyCopyWith<$Res> {
  _$OpenMeteoDailyCopyWithImpl(this._value, this._then);

  final OpenMeteoDaily _value;
  // ignore: unused_field
  final $Res Function(OpenMeteoDaily) _then;

  @override
  $Res call({
    Object? apparentTemperatureMax = freezed,
  }) {
    return _then(_value.copyWith(
      apparentTemperatureMax: apparentTemperatureMax == freezed
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenMeteoDailyCopyWith<$Res>
    implements $OpenMeteoDailyCopyWith<$Res> {
  factory _$$_OpenMeteoDailyCopyWith(
          _$_OpenMeteoDaily value, $Res Function(_$_OpenMeteoDaily) then) =
      __$$_OpenMeteoDailyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'apparent_temperature_max')
          List<dynamic> apparentTemperatureMax});
}

/// @nodoc
class __$$_OpenMeteoDailyCopyWithImpl<$Res>
    extends _$OpenMeteoDailyCopyWithImpl<$Res>
    implements _$$_OpenMeteoDailyCopyWith<$Res> {
  __$$_OpenMeteoDailyCopyWithImpl(
      _$_OpenMeteoDaily _value, $Res Function(_$_OpenMeteoDaily) _then)
      : super(_value, (v) => _then(v as _$_OpenMeteoDaily));

  @override
  _$_OpenMeteoDaily get _value => super._value as _$_OpenMeteoDaily;

  @override
  $Res call({
    Object? apparentTemperatureMax = freezed,
  }) {
    return _then(_$_OpenMeteoDaily(
      apparentTemperatureMax: apparentTemperatureMax == freezed
          ? _value._apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoDaily
    with DiagnosticableTreeMixin
    implements _OpenMeteoDaily {
  const _$_OpenMeteoDaily(
      {@JsonKey(name: 'apparent_temperature_max')
          required final List<dynamic> apparentTemperatureMax})
      : _apparentTemperatureMax = apparentTemperatureMax;

  factory _$_OpenMeteoDaily.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoDailyFromJson(json);

  final List<dynamic> _apparentTemperatureMax;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  List<dynamic> get apparentTemperatureMax {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperatureMax);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMeteoDaily(apparentTemperatureMax: $apparentTemperatureMax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMeteoDaily'))
      ..add(DiagnosticsProperty(
          'apparentTemperatureMax', apparentTemperatureMax));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoDaily &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMax, _apparentTemperatureMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_apparentTemperatureMax));

  @JsonKey(ignore: true)
  @override
  _$$_OpenMeteoDailyCopyWith<_$_OpenMeteoDaily> get copyWith =>
      __$$_OpenMeteoDailyCopyWithImpl<_$_OpenMeteoDaily>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoDailyToJson(this);
  }
}

abstract class _OpenMeteoDaily implements OpenMeteoDaily {
  const factory _OpenMeteoDaily(
          {@JsonKey(name: 'apparent_temperature_max')
              required final List<dynamic> apparentTemperatureMax}) =
      _$_OpenMeteoDaily;

  factory _OpenMeteoDaily.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoDaily.fromJson;

  @override
  @JsonKey(name: 'apparent_temperature_max')
  List<dynamic> get apparentTemperatureMax =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoDailyCopyWith<_$_OpenMeteoDaily> get copyWith =>
      throw _privateConstructorUsedError;
}
