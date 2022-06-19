// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomePageState _$HomePageStateFromJson(Map<String, dynamic> json) {
  return _HomePageState.fromJson(json);
}

/// @nodoc
mixin _$HomePageState {
  AddressState get address => throw _privateConstructorUsedError;
  OpenWeatherState get openWeather => throw _privateConstructorUsedError;
  OpenMeteoState get openMeteo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {AddressState address,
      OpenWeatherState openWeather,
      OpenMeteoState openMeteo});

  $AddressStateCopyWith<$Res> get address;
  $OpenWeatherStateCopyWith<$Res> get openWeather;
  $OpenMeteoStateCopyWith<$Res> get openMeteo;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? openWeather = freezed,
    Object? openMeteo = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressState,
      openWeather: openWeather == freezed
          ? _value.openWeather
          : openWeather // ignore: cast_nullable_to_non_nullable
              as OpenWeatherState,
      openMeteo: openMeteo == freezed
          ? _value.openMeteo
          : openMeteo // ignore: cast_nullable_to_non_nullable
              as OpenMeteoState,
    ));
  }

  @override
  $AddressStateCopyWith<$Res> get address {
    return $AddressStateCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $OpenWeatherStateCopyWith<$Res> get openWeather {
    return $OpenWeatherStateCopyWith<$Res>(_value.openWeather, (value) {
      return _then(_value.copyWith(openWeather: value));
    });
  }

  @override
  $OpenMeteoStateCopyWith<$Res> get openMeteo {
    return $OpenMeteoStateCopyWith<$Res>(_value.openMeteo, (value) {
      return _then(_value.copyWith(openMeteo: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_HomePageStateCopyWith(
          _$_HomePageState value, $Res Function(_$_HomePageState) then) =
      __$$_HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AddressState address,
      OpenWeatherState openWeather,
      OpenMeteoState openMeteo});

  @override
  $AddressStateCopyWith<$Res> get address;
  @override
  $OpenWeatherStateCopyWith<$Res> get openWeather;
  @override
  $OpenMeteoStateCopyWith<$Res> get openMeteo;
}

/// @nodoc
class __$$_HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomePageStateCopyWith<$Res> {
  __$$_HomePageStateCopyWithImpl(
      _$_HomePageState _value, $Res Function(_$_HomePageState) _then)
      : super(_value, (v) => _then(v as _$_HomePageState));

  @override
  _$_HomePageState get _value => super._value as _$_HomePageState;

  @override
  $Res call({
    Object? address = freezed,
    Object? openWeather = freezed,
    Object? openMeteo = freezed,
  }) {
    return _then(_$_HomePageState(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressState,
      openWeather: openWeather == freezed
          ? _value.openWeather
          : openWeather // ignore: cast_nullable_to_non_nullable
              as OpenWeatherState,
      openMeteo: openMeteo == freezed
          ? _value.openMeteo
          : openMeteo // ignore: cast_nullable_to_non_nullable
              as OpenMeteoState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomePageState with DiagnosticableTreeMixin implements _HomePageState {
  const _$_HomePageState(
      {required this.address,
      required this.openWeather,
      required this.openMeteo});

  factory _$_HomePageState.fromJson(Map<String, dynamic> json) =>
      _$$_HomePageStateFromJson(json);

  @override
  final AddressState address;
  @override
  final OpenWeatherState openWeather;
  @override
  final OpenMeteoState openMeteo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState(address: $address, openWeather: $openWeather, openMeteo: $openMeteo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePageState'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('openWeather', openWeather))
      ..add(DiagnosticsProperty('openMeteo', openMeteo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageState &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.openWeather, openWeather) &&
            const DeepCollectionEquality().equals(other.openMeteo, openMeteo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(openWeather),
      const DeepCollectionEquality().hash(openMeteo));

  @JsonKey(ignore: true)
  @override
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      __$$_HomePageStateCopyWithImpl<_$_HomePageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomePageStateToJson(this);
  }
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {required final AddressState address,
      required final OpenWeatherState openWeather,
      required final OpenMeteoState openMeteo}) = _$_HomePageState;

  factory _HomePageState.fromJson(Map<String, dynamic> json) =
      _$_HomePageState.fromJson;

  @override
  AddressState get address => throw _privateConstructorUsedError;
  @override
  OpenWeatherState get openWeather => throw _privateConstructorUsedError;
  @override
  OpenMeteoState get openMeteo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
