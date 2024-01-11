import 'package:flutter/material.dart';
import 'package:my_flutter_rate_app/data/repository/rate_repository.dart';
import 'package:my_flutter_rate_app/ui/main/main_state.dart';

class MainViewModel extends ChangeNotifier {
  final RateRepository _rateRepository;

  MainState _mainState = MainState();

  MainState get mainState => _mainState;

  MainViewModel({
    required RateRepository rateRepository,
  }) : _rateRepository = rateRepository {
    _updateRateResult(mainState.baseCode);
  }
  Future<void> _updateRateResult(String baseCode) async {
    final result = await _rateRepository.getRateResult(baseCode);
    _mainState = mainState.copyWith(rateResult: result);
    notifyListeners();
  }

  void inputBaseCurrency(num baseCurrency) {
    _mainState = mainState.copyWith(
      baseCurrency: baseCurrency,
      targetCurrency: baseCurrency *
          mainState.rateResult!.rates
              .firstWhere((element) => element.code == mainState.targetCode)
              .rate,
    );
    notifyListeners();
  }

  void inputBaseCode(String baseCode) async {
    _mainState = mainState.copyWith(
      baseCode: baseCode,
      targetCurrency: mainState.baseCurrency *
          mainState.rateResult!.rates
              .firstWhere((element) => element.code == baseCode)
              .rate,
    );

    notifyListeners();
  }

  void inputTargetCurrency(num targetCurrency) {
    _mainState = mainState.copyWith(
      targetCurrency: targetCurrency,
      baseCurrency: targetCurrency /
          mainState.rateResult!.rates
              .firstWhere((element) => element.code == mainState.targetCode)
              .rate,
    );
    notifyListeners();
  }

  void inputTargetCode(String targetCode) {
    _mainState = mainState.copyWith(
      targetCode: targetCode,
      targetCurrency: mainState.baseCurrency *
          mainState.rateResult!.rates
              .firstWhere((element) => element.code == targetCode)
              .rate,
    );

    notifyListeners();
  }
}
