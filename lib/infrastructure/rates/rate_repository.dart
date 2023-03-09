import 'dart:convert';

import 'package:currency_rate_ddd/domain/rates/i_rate_repository.dart';
import 'package:currency_rate_ddd/domain/rates/rate.dart';
import 'package:currency_rate_ddd/domain/rates/rate_failure.dart';
import 'package:currency_rate_ddd/infrastructure/core/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class RateRepository extends IRateRepository {
  List<Rate> lastRates = [];

  @override
  Future<Either<RateFailure, List<Rate>>> getRates() async {
    try {
      var res = await http
          .get(Uri.parse("${Constants.baseUrl}/code-challenge/index.php"));

      if (res.statusCode != 200) {
        return left(const RateFailure.invalidData());
      }

      var json = jsonDecode(res.body);

      List<Rate> rates = [];
      for (var item in json["rates"]) {
        rates.add(Rate.fromJson(item));
      }

      return right(rates);
    } catch (x) {
      return left(const RateFailure.noConnectivity());
    }
  }
}
