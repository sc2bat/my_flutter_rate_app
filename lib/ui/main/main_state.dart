// ignore_for_file: depend_on_referenced_packages

import 'package:my_flutter_rate_app/data/model/rate_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  factory MainState({
    RateResult? rateResult,
    @Default(false) bool isLoading,
    @Default(1) num baseCurrency,
    @Default(1) num targetCurrency,
    @Default('KRW') String baseCode,
    @Default('USD') String targetCode,
  }) = _MainState;

  factory MainState.fromJson(Map<String, dynamic> json) =>
      _$MainStateFromJson(json);
}
