import 'package:currency_rate_ddd/domain/rates/rate.dart';
import 'package:currency_rate_ddd/domain/rates/rate_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IRateRepository{
  Future<Either<RateFailure,List<Rate>>> getRates();
}