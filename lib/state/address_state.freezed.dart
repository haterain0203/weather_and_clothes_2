// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressState _$AddressStateFromJson(Map<String, dynamic> json) {
  return _AddressState.fromJson(json);
}

/// @nodoc
mixin _$AddressState {
  AddressResults get results => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res>;
  $Res call({AddressResults results, int status});

  $AddressResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res> implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  final AddressState _value;
  // ignore: unused_field
  final $Res Function(AddressState) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as AddressResults,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $AddressResultsCopyWith<$Res> get results {
    return $AddressResultsCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddressStateCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$_AddressStateCopyWith(
          _$_AddressState value, $Res Function(_$_AddressState) then) =
      __$$_AddressStateCopyWithImpl<$Res>;
  @override
  $Res call({AddressResults results, int status});

  @override
  $AddressResultsCopyWith<$Res> get results;
}

/// @nodoc
class __$$_AddressStateCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res>
    implements _$$_AddressStateCopyWith<$Res> {
  __$$_AddressStateCopyWithImpl(
      _$_AddressState _value, $Res Function(_$_AddressState) _then)
      : super(_value, (v) => _then(v as _$_AddressState));

  @override
  _$_AddressState get _value => super._value as _$_AddressState;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AddressState(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as AddressResults,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressState with DiagnosticableTreeMixin implements _AddressState {
  const _$_AddressState({required this.results, required this.status});

  factory _$_AddressState.fromJson(Map<String, dynamic> json) =>
      _$$_AddressStateFromJson(json);

  @override
  final AddressResults results;
  @override
  final int status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressState(results: $results, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressState'))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressState &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      __$$_AddressStateCopyWithImpl<_$_AddressState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressStateToJson(this);
  }
}

abstract class _AddressState implements AddressState {
  const factory _AddressState(
      {required final AddressResults results,
      required final int status}) = _$_AddressState;

  factory _AddressState.fromJson(Map<String, dynamic> json) =
      _$_AddressState.fromJson;

  @override
  AddressResults get results => throw _privateConstructorUsedError;
  @override
  int get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressResults _$AddressResultsFromJson(Map<String, dynamic> json) {
  return _AddressResults.fromJson(json);
}

/// @nodoc
mixin _$AddressResults {
  @JsonKey(name: 'address1')
  String get prefecture => throw _privateConstructorUsedError;
  @JsonKey(name: 'address2')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'address3')
  String get town => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResultsCopyWith<AddressResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResultsCopyWith<$Res> {
  factory $AddressResultsCopyWith(
          AddressResults value, $Res Function(AddressResults) then) =
      _$AddressResultsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address1') String prefecture,
      @JsonKey(name: 'address2') String city,
      @JsonKey(name: 'address3') String town});
}

/// @nodoc
class _$AddressResultsCopyWithImpl<$Res>
    implements $AddressResultsCopyWith<$Res> {
  _$AddressResultsCopyWithImpl(this._value, this._then);

  final AddressResults _value;
  // ignore: unused_field
  final $Res Function(AddressResults) _then;

  @override
  $Res call({
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? town = freezed,
  }) {
    return _then(_value.copyWith(
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      town: town == freezed
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressResultsCopyWith<$Res>
    implements $AddressResultsCopyWith<$Res> {
  factory _$$_AddressResultsCopyWith(
          _$_AddressResults value, $Res Function(_$_AddressResults) then) =
      __$$_AddressResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address1') String prefecture,
      @JsonKey(name: 'address2') String city,
      @JsonKey(name: 'address3') String town});
}

/// @nodoc
class __$$_AddressResultsCopyWithImpl<$Res>
    extends _$AddressResultsCopyWithImpl<$Res>
    implements _$$_AddressResultsCopyWith<$Res> {
  __$$_AddressResultsCopyWithImpl(
      _$_AddressResults _value, $Res Function(_$_AddressResults) _then)
      : super(_value, (v) => _then(v as _$_AddressResults));

  @override
  _$_AddressResults get _value => super._value as _$_AddressResults;

  @override
  $Res call({
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? town = freezed,
  }) {
    return _then(_$_AddressResults(
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      town: town == freezed
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressResults
    with DiagnosticableTreeMixin
    implements _AddressResults {
  const _$_AddressResults(
      {@JsonKey(name: 'address1') required this.prefecture,
      @JsonKey(name: 'address2') required this.city,
      @JsonKey(name: 'address3') required this.town});

  factory _$_AddressResults.fromJson(Map<String, dynamic> json) =>
      _$$_AddressResultsFromJson(json);

  @override
  @JsonKey(name: 'address1')
  final String prefecture;
  @override
  @JsonKey(name: 'address2')
  final String city;
  @override
  @JsonKey(name: 'address3')
  final String town;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressResults(prefecture: $prefecture, city: $city, town: $town)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressResults'))
      ..add(DiagnosticsProperty('prefecture', prefecture))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('town', town));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressResults &&
            const DeepCollectionEquality()
                .equals(other.prefecture, prefecture) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.town, town));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(prefecture),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(town));

  @JsonKey(ignore: true)
  @override
  _$$_AddressResultsCopyWith<_$_AddressResults> get copyWith =>
      __$$_AddressResultsCopyWithImpl<_$_AddressResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressResultsToJson(this);
  }
}

abstract class _AddressResults implements AddressResults {
  const factory _AddressResults(
          {@JsonKey(name: 'address1') required final String prefecture,
          @JsonKey(name: 'address2') required final String city,
          @JsonKey(name: 'address3') required final String town}) =
      _$_AddressResults;

  factory _AddressResults.fromJson(Map<String, dynamic> json) =
      _$_AddressResults.fromJson;

  @override
  @JsonKey(name: 'address1')
  String get prefecture => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address2')
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address3')
  String get town => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressResultsCopyWith<_$_AddressResults> get copyWith =>
      throw _privateConstructorUsedError;
}
