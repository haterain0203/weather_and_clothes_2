import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'address_state.freezed.dart';
part 'address_state.g.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    required List<AddressResults> results,
  }) = _AddressState;

  factory AddressState.fromJson(Map<String, dynamic> json) =>
      _$AddressStateFromJson(json);
}

@freezed
class AddressResults with _$AddressResults {
  const factory AddressResults({
    @JsonKey(name: 'address1') required String prefecture,
    @JsonKey(name: 'address2') required String city,
    @JsonKey(name: 'address3') required String town,
    required String zipcode,
  }) = _AddressResults;

  factory AddressResults.fromJson(Map<String, dynamic> json) =>
      _$AddressResultsFromJson(json);
}