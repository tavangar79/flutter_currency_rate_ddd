import 'package:currency_rate_ddd/application/rates/get_rates/rate_bloc.dart';
import 'package:currency_rate_ddd/domain/rates/i_rate_repository.dart';
import 'package:currency_rate_ddd/infrastructure/rates/rate_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt =GetIt.instance;

Future<void> initInjections() async {

  ///repositories
  getIt.registerSingleton<IRateRepository>(RateRepository());

  ///bloc
  getIt.registerSingleton<RateBloc>(RateBloc(getIt<IRateRepository>()));
}