import 'package:currency_rate_ddd/application/rates/get_rates/update_time_status.dart';
import 'package:equatable/equatable.dart';

import 'rate_status.dart';

class RatesStates extends Equatable {
  final RateStatus rateStatus;
  final UpdateTimeStatus updateTimeStatus;

  const RatesStates(this.rateStatus, this.updateTimeStatus);

  @override
  List<Object?> get props => [rateStatus,updateTimeStatus];

  RatesStates copyWith(
      {RateStatus? newRateStatus, UpdateTimeStatus? newUpdateTimeStatus}) {
    return RatesStates(
        newRateStatus ?? rateStatus, newUpdateTimeStatus ?? updateTimeStatus);
  }
}
