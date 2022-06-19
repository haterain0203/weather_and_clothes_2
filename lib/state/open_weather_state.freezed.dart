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
  @JsonKey(name: 'coord')
  OpenWeatherLatLong get latLong => throw _privateConstructorUsedError;
  List<OpenWeatherDescAndIcon> get descAndIcon =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'coord') OpenWeatherLatLong latLong,
      List<OpenWeatherDescAndIcon> descAndIcon});

  $OpenWeatherLatLongCopyWith<$Res> get latLong;
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
    Object? latLong = freezed,
    Object? descAndIcon = freezed,
  }) {
    return _then(_value.copyWith(
      latLong: latLong == freezed
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as OpenWeatherLatLong,
      descAndIcon: descAndIcon == freezed
          ? _value.descAndIcon
          : descAndIcon // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherDescAndIcon>,
    ));
  }

  @override
  $OpenWeatherLatLongCopyWith<$Res> get latLong {
    return $OpenWeatherLatLongCopyWith<$Res>(_value.latLong, (value) {
      return _then(_value.copyWith(latLong: value));
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
  $Res call(
      {@JsonKey(name: 'coord') OpenWeatherLatLong latLong,
      List<OpenWeatherDescAndIcon> descAndIcon});

  @override
  $OpenWeatherLatLongCopyWith<$Res> get latLong;
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
    Object? latLong = freezed,
    Object? descAndIcon = freezed,
  }) {
    return _then(_$_OpenWeatherState(
      latLong: latLong == freezed
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as OpenWeatherLatLong,
      descAndIcon: descAndIcon == freezed
          ? _value._descAndIcon
          : descAndIcon // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherDescAndIcon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherState
    with DiagnosticableTreeMixin
    implements _OpenWeatherState {
  const _$_OpenWeatherState(
      {@JsonKey(name: 'coord') required this.latLong,
      required final List<OpenWeatherDescAndIcon> descAndIcon})
      : _descAndIcon = descAndIcon;

  factory _$_OpenWeatherState.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherStateFromJson(json);

  @override
  @JsonKey(name: 'coord')
  final OpenWeatherLatLong latLong;
  final List<OpenWeatherDescAndIcon> _descAndIcon;
  @override
  List<OpenWeatherDescAndIcon> get descAndIcon {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descAndIcon);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherState(latLong: $latLong, descAndIcon: $descAndIcon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherState'))
      ..add(DiagnosticsProperty('latLong', latLong))
      ..add(DiagnosticsProperty('descAndIcon', descAndIcon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherState &&
            const DeepCollectionEquality().equals(other.latLong, latLong) &&
            const DeepCollectionEquality()
                .equals(other._descAndIcon, _descAndIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latLong),
      const DeepCollectionEquality().hash(_descAndIcon));

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
          {@JsonKey(name: 'coord') required final OpenWeatherLatLong latLong,
          required final List<OpenWeatherDescAndIcon> descAndIcon}) =
      _$_OpenWeatherState;

  factory _OpenWeatherState.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherState.fromJson;

  @override
  @JsonKey(name: 'coord')
  OpenWeatherLatLong get latLong => throw _privateConstructorUsedError;
  @override
  List<OpenWeatherDescAndIcon> get descAndIcon =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherStateCopyWith<_$_OpenWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherLatLong _$OpenWeatherLatLongFromJson(Map<String, dynamic> json) {
  return _OpenWeatherLatLong.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherLatLong {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherLatLongCopyWith<OpenWeatherLatLong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherLatLongCopyWith<$Res> {
  factory $OpenWeatherLatLongCopyWith(
          OpenWeatherLatLong value, $Res Function(OpenWeatherLatLong) then) =
      _$OpenWeatherLatLongCopyWithImpl<$Res>;
  $Res call({double lon, double lat});
}

/// @nodoc
class _$OpenWeatherLatLongCopyWithImpl<$Res>
    implements $OpenWeatherLatLongCopyWith<$Res> {
  _$OpenWeatherLatLongCopyWithImpl(this._value, this._then);

  final OpenWeatherLatLong _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherLatLong) _then;

  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenWeatherLatLongCopyWith<$Res>
    implements $OpenWeatherLatLongCopyWith<$Res> {
  factory _$$_OpenWeatherLatLongCopyWith(_$_OpenWeatherLatLong value,
          $Res Function(_$_OpenWeatherLatLong) then) =
      __$$_OpenWeatherLatLongCopyWithImpl<$Res>;
  @override
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$_OpenWeatherLatLongCopyWithImpl<$Res>
    extends _$OpenWeatherLatLongCopyWithImpl<$Res>
    implements _$$_OpenWeatherLatLongCopyWith<$Res> {
  __$$_OpenWeatherLatLongCopyWithImpl(
      _$_OpenWeatherLatLong _value, $Res Function(_$_OpenWeatherLatLong) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherLatLong));

  @override
  _$_OpenWeatherLatLong get _value => super._value as _$_OpenWeatherLatLong;

  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_OpenWeatherLatLong(
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherLatLong
    with DiagnosticableTreeMixin
    implements _OpenWeatherLatLong {
  const _$_OpenWeatherLatLong({required this.lon, required this.lat});

  factory _$_OpenWeatherLatLong.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherLatLongFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherLatLong(lon: $lon, lat: $lat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherLatLong'))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('lat', lat));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherLatLong &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.lat, lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(lat));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherLatLongCopyWith<_$_OpenWeatherLatLong> get copyWith =>
      __$$_OpenWeatherLatLongCopyWithImpl<_$_OpenWeatherLatLong>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherLatLongToJson(this);
  }
}

abstract class _OpenWeatherLatLong implements OpenWeatherLatLong {
  const factory _OpenWeatherLatLong(
      {required final double lon,
      required final double lat}) = _$_OpenWeatherLatLong;

  factory _OpenWeatherLatLong.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherLatLong.fromJson;

  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherLatLongCopyWith<_$_OpenWeatherLatLong> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherDescAndIcon _$OpenWeatherDescAndIconFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherDescAndIcon.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherDescAndIcon {
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherDescAndIconCopyWith<OpenWeatherDescAndIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherDescAndIconCopyWith<$Res> {
  factory $OpenWeatherDescAndIconCopyWith(OpenWeatherDescAndIcon value,
          $Res Function(OpenWeatherDescAndIcon) then) =
      _$OpenWeatherDescAndIconCopyWithImpl<$Res>;
  $Res call({String description, String icon});
}

/// @nodoc
class _$OpenWeatherDescAndIconCopyWithImpl<$Res>
    implements $OpenWeatherDescAndIconCopyWith<$Res> {
  _$OpenWeatherDescAndIconCopyWithImpl(this._value, this._then);

  final OpenWeatherDescAndIcon _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherDescAndIcon) _then;

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
abstract class _$$_OpenWeatherDescAndIconCopyWith<$Res>
    implements $OpenWeatherDescAndIconCopyWith<$Res> {
  factory _$$_OpenWeatherDescAndIconCopyWith(_$_OpenWeatherDescAndIcon value,
          $Res Function(_$_OpenWeatherDescAndIcon) then) =
      __$$_OpenWeatherDescAndIconCopyWithImpl<$Res>;
  @override
  $Res call({String description, String icon});
}

/// @nodoc
class __$$_OpenWeatherDescAndIconCopyWithImpl<$Res>
    extends _$OpenWeatherDescAndIconCopyWithImpl<$Res>
    implements _$$_OpenWeatherDescAndIconCopyWith<$Res> {
  __$$_OpenWeatherDescAndIconCopyWithImpl(_$_OpenWeatherDescAndIcon _value,
      $Res Function(_$_OpenWeatherDescAndIcon) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherDescAndIcon));

  @override
  _$_OpenWeatherDescAndIcon get _value =>
      super._value as _$_OpenWeatherDescAndIcon;

  @override
  $Res call({
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_OpenWeatherDescAndIcon(
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
class _$_OpenWeatherDescAndIcon
    with DiagnosticableTreeMixin
    implements _OpenWeatherDescAndIcon {
  const _$_OpenWeatherDescAndIcon(
      {required this.description, required this.icon});

  factory _$_OpenWeatherDescAndIcon.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherDescAndIconFromJson(json);

  @override
  final String description;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenWeatherDescAndIcon(description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenWeatherDescAndIcon'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherDescAndIcon &&
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
  _$$_OpenWeatherDescAndIconCopyWith<_$_OpenWeatherDescAndIcon> get copyWith =>
      __$$_OpenWeatherDescAndIconCopyWithImpl<_$_OpenWeatherDescAndIcon>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherDescAndIconToJson(this);
  }
}

abstract class _OpenWeatherDescAndIcon implements OpenWeatherDescAndIcon {
  const factory _OpenWeatherDescAndIcon(
      {required final String description,
      required final String icon}) = _$_OpenWeatherDescAndIcon;

  factory _OpenWeatherDescAndIcon.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherDescAndIcon.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherDescAndIconCopyWith<_$_OpenWeatherDescAndIcon> get copyWith =>
      throw _privateConstructorUsedError;
}
