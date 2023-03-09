import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/rate_event.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/rate_status.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/rates_state.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/update_time_status.dart';
import 'package:currency_rate_ddd/domain/rates/i_rate_repository.dart';
import 'package:currency_rate_ddd/domain/rates/rate.dart';

class RateBloc extends Bloc<RateEvent, RatesStates> {
  final IRateRepository _repository;
  late Timer _timer;

  RateBloc(this._repository)
      : super(RatesStates(RateLoading(), UpdateTimeLoading())) {
    on<LoadRates>((event, emit) async {

      var oldData = <Rate>[];
      if (state.rateStatus is RateCompleted) {
        oldData = (state.rateStatus as RateCompleted).newRates;
      }

      emit(state.copyWith(newRateStatus: RateLoading()));

      final rates = await _repository.getRates();

      emit(rates.fold(
              (l) =>
              RatesStates(
                  RateError(l.toString()), UpdateTimeError(l.toString())),
              (data) =>
              state.copyWith(
                  newRateStatus: RateCompleted(
                      oldRates: oldData, newRates: data),
                  newUpdateTimeStatus: UpdateTimeCompleted(DateTime.now()))));

      _timer = Timer.periodic(const Duration(seconds: 10), (t) {
        add(UpdateRates());
      });
    });

    on<UpdateRates>((event, emit) async {
      var oldData = <Rate>[];
      if (state.rateStatus is RateCompleted) {
        oldData = (state.rateStatus as RateCompleted).newRates;
      }

      final rates = await _repository.getRates();

      emit(rates.fold(
              (l) =>
              RatesStates(
                  RateError(l.toString()), UpdateTimeError(l.toString())),
              (data) =>
              state.copyWith(
                  newRateStatus: RateCompleted(newRates: data,oldRates: oldData),
                  newUpdateTimeStatus: UpdateTimeCompleted(DateTime.now()))));
    });

    //
  }
}
