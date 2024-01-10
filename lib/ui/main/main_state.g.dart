// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainStateImpl _$$MainStateImplFromJson(Map<String, dynamic> json) =>
    _$MainStateImpl(
      rateResult: json['rateResult'] == null
          ? null
          : RateResult.fromJson(json['rateResult'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      baseCurrency: json['baseCurrency'] as num? ?? 1,
      targetCurrency: json['targetCurrency'] as num? ?? 1,
      baseCode: json['baseCode'] as String? ?? 'KRW',
      targetCode: json['targetCode'] as String? ?? 'USD',
    );

Map<String, dynamic> _$$MainStateImplToJson(_$MainStateImpl instance) =>
    <String, dynamic>{
      'rateResult': instance.rateResult,
      'isLoading': instance.isLoading,
      'baseCurrency': instance.baseCurrency,
      'targetCurrency': instance.targetCurrency,
      'baseCode': instance.baseCode,
      'targetCode': instance.targetCode,
    };
