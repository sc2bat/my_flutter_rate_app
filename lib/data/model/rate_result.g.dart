// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateResultImpl _$$RateResultImplFromJson(Map<String, dynamic> json) =>
    _$RateResultImpl(
      lastUpdateTime: DateTime.parse(json['lastUpdateTime'] as String),
      nextUpdateTime: DateTime.parse(json['nextUpdateTime'] as String),
      baseCode: json['baseCode'] as String,
      rates: (json['rates'] as List<dynamic>)
          .map((e) => Rate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RateResultImplToJson(_$RateResultImpl instance) =>
    <String, dynamic>{
      'lastUpdateTime': instance.lastUpdateTime.toIso8601String(),
      'nextUpdateTime': instance.nextUpdateTime.toIso8601String(),
      'baseCode': instance.baseCode,
      'rates': instance.rates,
    };
