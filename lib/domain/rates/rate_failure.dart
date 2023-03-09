import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_failure.freezed.dart';

@freezed
class RateFailure with _$RateFailure{
  const factory RateFailure.invalidData() = _InvalidData;
  const factory RateFailure.noConnectivity() = _NoConnectivity;
}