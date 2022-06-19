// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressState _$$_AddressStateFromJson(Map<String, dynamic> json) =>
    _$_AddressState(
      results: AddressResults.fromJson(json['results'] as Map<String, dynamic>),
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_AddressStateToJson(_$_AddressState instance) =>
    <String, dynamic>{
      'results': instance.results,
      'status': instance.status,
    };

_$_AddressResults _$$_AddressResultsFromJson(Map<String, dynamic> json) =>
    _$_AddressResults(
      prefecture: json['address1'] as String,
      city: json['address2'] as String,
      town: json['address3'] as String,
    );

Map<String, dynamic> _$$_AddressResultsToJson(_$_AddressResults instance) =>
    <String, dynamic>{
      'address1': instance.prefecture,
      'address2': instance.city,
      'address3': instance.town,
    };
