// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ExchangeRateData {
  String result;
  String provider;
  String documentation;
  String termsOfUse;
  int timeLastUpdateUnix;
  String timeLastUpdateUtc;
  int timeNextUpdateUnix;
  String timeNextUpdateUtc;
  int timeEolUnix;
  String baseCode;
  Map<String, double> rates;
  ExchangeRateData({
    required this.result,
    required this.provider,
    required this.documentation,
    required this.termsOfUse,
    required this.timeLastUpdateUnix,
    required this.timeLastUpdateUtc,
    required this.timeNextUpdateUnix,
    required this.timeNextUpdateUtc,
    required this.timeEolUnix,
    required this.baseCode,
    required this.rates,
  });

  ExchangeRateData copyWith({
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
    Map<String, double>? rates,
  }) {
    return ExchangeRateData(
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

  factory ExchangeRateData.fromMap(Map<String, dynamic> map) {
    return ExchangeRateData(
      result: map['result'] as String,
      provider: map['provider'] as String,
      documentation: map['documentation'] as String,
      termsOfUse: map['termsOfUse'] as String,
      timeLastUpdateUnix: map['timeLastUpdateUnix'] as int,
      timeLastUpdateUtc: map['timeLastUpdateUtc'] as String,
      timeNextUpdateUnix: map['timeNextUpdateUnix'] as int,
      timeNextUpdateUtc: map['timeNextUpdateUtc'] as String,
      timeEolUnix: map['timeEolUnix'] as int,
      baseCode: map['baseCode'] as String,
      rates: Map<String, double>.from((map['rates'] as Map<String, double>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeRateData.fromJson(String source) =>
      ExchangeRateData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExchangeRateData(result: $result, provider: $provider, documentation: $documentation, termsOfUse: $termsOfUse, timeLastUpdateUnix: $timeLastUpdateUnix, timeLastUpdateUtc: $timeLastUpdateUtc, timeNextUpdateUnix: $timeNextUpdateUnix, timeNextUpdateUtc: $timeNextUpdateUtc, timeEolUnix: $timeEolUnix, baseCode: $baseCode, rates: $rates)';
  }

  @override
  bool operator ==(covariant ExchangeRateData other) {
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
