import 'package:my_flutter_rate_app/data/model/rate_result.dart';

abstract interface class RateRepository {
  Future<RateResult> getRateResult(String baseCode);
}
