import 'package:flutter/material.dart';
import 'package:my_flutter_rate_app/data/repository/rate_repository.dart';
import 'package:my_flutter_rate_app/ui/main/main_state.dart';

class MainViewModel extends ChangeNotifier {
  final RateRepository _rateRepository;

  final MainState _mainState = MainState();

  MainState get mainState = _mainState;

  MainViewModel({
    required RateRepository rateRepository,
  }) : _rateRepository = rateRepository{
    _updateRateResult(mainState.baseCode);
  }
}
