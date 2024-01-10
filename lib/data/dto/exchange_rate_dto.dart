import 'dart:convert';
// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

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
  String? base_code;
  Map<String, num>? rates;
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
    this.base_code,
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
    String? base_code,
    Map<String, num>? rates,
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
      base_code: base_code ?? this.base_code,
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
      'base_code': base_code,
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
      base_code: map['base_code'] != null ? map['base_code'] as String : null,
      rates: map['rates'] != null
          ? Map<String, num>.from((map['rates'] as Map<String, num>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeRateDto.fromJson(String source) =>
      ExchangeRateDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExchangeRateDto(result: $result, provider: $provider, documentation: $documentation, termsOfUse: $termsOfUse, timeLastUpdateUnix: $timeLastUpdateUnix, timeLastUpdateUtc: $timeLastUpdateUtc, timeNextUpdateUnix: $timeNextUpdateUnix, timeNextUpdateUtc: $timeNextUpdateUtc, timeEolUnix: $timeEolUnix, base_code: $base_code, rates: $rates)';
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
        other.base_code == base_code &&
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
        base_code.hashCode ^
        rates.hashCode;
  }
}
