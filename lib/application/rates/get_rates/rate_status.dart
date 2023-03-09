import 'package:currency_rate_ddd/domain/rates/rate.dart';
import 'package:equatable/equatable.dart';

abstract class RateStatus extends Equatable {}

class RateLoading extends RateStatus {
  @override
  List<Object?> get props => [];
}

class RateCompleted extends RateStatus {
  final List<Rate> newRates;
  final List<Rate>? oldRates;

  RateCompleted({required this.newRates, this.oldRates});

  @override
  List<Object?> get props => [newRates, oldRates];
}

class RateError extends RateStatus {
  final String message;

  RateError(this.message);

  @override
  List<Object?> get props => [message];
}
