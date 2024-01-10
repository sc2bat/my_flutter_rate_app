import 'package:my_flutter_rate_app/data/model/rate.dart';
import 'package:my_flutter_rate_app/data/model/rate_result.dart';
import 'package:my_flutter_rate_app/data/repository/rate_repository.dart';
import 'package:my_flutter_rate_app/temp/dump.dart';

class RateRepositoryMock implements RateRepository {
  final mockKRW = krw;
  final mockUSD = usd;

  @override
  Future<RateResult> getRateResult(String baseCode) async {
    if (baseCode.toUpperCase() == 'KRW' || baseCode.toUpperCase() == 'USD') {
      try {
        final rates = mockKRW['rates'] as Map<String, num>;
        final nextUpdateTime = DateTime.fromMillisecondsSinceEpoch(
            (mockKRW['time_next_update_unix'] as int) * 1000);
        final lastUpdateTime = DateTime.fromMillisecondsSinceEpoch(
            (mockKRW['time_last_update_unix'] as int) * 1000);
        final rateResult = RateResult(
          lastUpdateTime: lastUpdateTime,
          nextUpdateTime: nextUpdateTime,
          baseCode: baseCode,
          rates: rates.entries
              .map((e) => Rate(code: e.key, rate: e.value))
              .toList(),
        );
        return rateResult;
      } catch (e) {
        rethrow;
      }
    } else {
      throw Exception('not implemneted');
    }
    // throw UnimplementedError();
  }
}
