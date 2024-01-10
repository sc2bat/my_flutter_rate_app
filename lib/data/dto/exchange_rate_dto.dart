// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ExchangeRateDto {
  String? result;
  String? provider;
  String? documentation;
  String? termsOfUse;
  int? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  int? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  int? timeEolUnix;
  String? baseCode;
  Map<String, dynamic>? rates;
  ExchangeRateDto({
    this.result,
    this.provider,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.timeEolUnix,
    this.baseCode,
    this.rates,
  });

  ExchangeRateDto copyWith({
    String? result,
    String? provider,
    String? documentation,
    String? termsOfUse,
    int? timeLastUpdateUnix,
    String? timeLastUpdateUtc,
    int? timeNextUpdateUnix,
    String? timeNextUpdateUtc,
    int? timeEolUnix,
    String? baseCode,
    Map<String, dynamic>? rates,
  }) {
    return ExchangeRateDto(
      result: result ?? this.result,
      provider: provider ?? this.provider,
      documentation: documentation ?? this.documentation,
      termsOfUse: termsOfUse ?? this.termsOfUse,
      timeLastUpdateUnix: timeLastUpdateUnix ?? this.timeLastUpdateUnix,
      timeLastUpdateUtc: timeLastUpdateUtc ?? this.timeLastUpdateUtc,
      timeNextUpdateUnix: timeNextUpdateUnix ?? this.timeNextUpdateUnix,
      timeNextUpdateUtc: timeNextUpdateUtc ?? this.timeNextUpdateUtc,
      timeEolUnix: timeEolUnix ?? this.timeEolUnix,
      baseCode: baseCode ?? this.baseCode,
      rates: rates ?? this.rates,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'provider': provider,
      'documentation': documentation,
      'termsOfUse': termsOfUse,
      'timeLastUpdateUnix': timeLastUpdateUnix,
      'timeLastUpdateUtc': timeLastUpdateUtc,
      'timeNextUpdateUnix': timeNextUpdateUnix,
      'timeNextUpdateUtc': timeNextUpdateUtc,
      'timeEolUnix': timeEolUnix,
      'baseCode': baseCode,
      'rates': rates,
    };
  }

  factory ExchangeRateDto.fromMap(Map<String, dynamic> map) {
    return ExchangeRateDto(
      result: map['result'] != null ? map['result'] as String : null,
      provider: map['provider'] != null ? map['provider'] as String : null,
      documentation:
          map['documentation'] != null ? map['documentation'] as String : null,
      termsOfUse:
          map['termsOfUse'] != null ? map['termsOfUse'] as String : null,
      timeLastUpdateUnix: map['timeLastUpdateUnix'] != null
          ? map['timeLastUpdateUnix'] as int
          : null,
      timeLastUpdateUtc: map['timeLastUpdateUtc'] != null
          ? map['timeLastUpdateUtc'] as String
          : null,
      timeNextUpdateUnix: map['timeNextUpdateUnix'] != null
          ? map['timeNextUpdateUnix'] as int
          : null,
      timeNextUpdateUtc: map['timeNextUpdateUtc'] != null
          ? map['timeNextUpdateUtc'] as String
          : null,
      timeEolUnix:
          map['timeEolUnix'] != null ? map['timeEolUnix'] as int : null,
      baseCode: map['baseCode'] != null ? map['baseCode'] as String : null,
      rates: map['rates'] != null
          ? Map<String, dynamic>.from((map['rates'] as Map<String, dynamic>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeRateDto.fromJson(String source) =>
      ExchangeRateDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExchangeRateDto(result: $result, provider: $provider, documentation: $documentation, termsOfUse: $termsOfUse, timeLastUpdateUnix: $timeLastUpdateUnix, timeLastUpdateUtc: $timeLastUpdateUtc, timeNextUpdateUnix: $timeNextUpdateUnix, timeNextUpdateUtc: $timeNextUpdateUtc, timeEolUnix: $timeEolUnix, baseCode: $baseCode, rates: $rates)';
  }

  @override
  bool operator ==(covariant ExchangeRateDto other) {
    if (identical(this, other)) return true;

    return other.result == result &&
        other.provider == provider &&
        other.documentation == documentation &&
        other.termsOfUse == termsOfUse &&
        other.timeLastUpdateUnix == timeLastUpdateUnix &&
        other.timeLastUpdateUtc == timeLastUpdateUtc &&
        other.timeNextUpdateUnix == timeNextUpdateUnix &&
        other.timeNextUpdateUtc == timeNextUpdateUtc &&
        other.timeEolUnix == timeEolUnix &&
        other.baseCode == baseCode &&
        mapEquals(other.rates, rates);
  }

  @override
  int get hashCode {
    return result.hashCode ^
        provider.hashCode ^
        documentation.hashCode ^
        termsOfUse.hashCode ^
        timeLastUpdateUnix.hashCode ^
        timeLastUpdateUtc.hashCode ^
        timeNextUpdateUnix.hashCode ^
        timeNextUpdateUtc.hashCode ^
        timeEolUnix.hashCode ^
        baseCode.hashCode ^
        rates.hashCode;
  }
}
