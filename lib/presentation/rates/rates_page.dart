import 'package:currency_rate_ddd/application/rates/get_rates/rate_bloc.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/rate_event.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/rate_status.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/rates_state.dart';
import 'package:currency_rate_ddd/application/rates/get_rates/update_time_status.dart';
import 'package:currency_rate_ddd/presentation/core/colors.dart';
import 'package:currency_rate_ddd/presentation/rates/widgets/currency_row_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/rates/rate.dart';

class RatesPage extends StatefulWidget {
  const RatesPage({Key? key}) : super(key: key);

  @override
  State<RatesPage> createState() => _RatesPageState();
}

class _RatesPageState extends State<RatesPage> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<RateBloc>(context).add(LoadRates());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.colorPageBackground,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 60, right: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rates",
              style: TextStyle(
                  color: ThemeColors.colorTextBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 48),
            ),
            Expanded(
              child: BlocBuilder<RateBloc, RatesStates>(
                builder: (ctx, state) {
                  if (state.rateStatus is RateLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state.rateStatus is RateCompleted) {
                    var x = state.rateStatus as RateCompleted;
                    var data = x.newRates;
                    return ListView.builder(
                      itemBuilder: (ctx, index) {
                        var item = data[index];
                        Rate? old =
                            (x.oldRates != null && x.oldRates!.isNotEmpty)
                                ? x.oldRates?.firstWhere(
                                    (element) => element.symbol == item.symbol)
                                : null;
                        return CurrencyRowItem(
                          data: item,
                          oldData: old,
                        );
                      },
                      itemCount: data.length,
                    );
                  }
                  return Container();
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: BlocBuilder<RateBloc, RatesStates>(
                builder: (ctx, state) {
                  if (state.updateTimeStatus is UpdateTimeCompleted) {
                    return Text(
                      "Last updated: ${(state.updateTimeStatus as UpdateTimeCompleted).time.toString()}",
                      style: const TextStyle(
                          color: ThemeColors.colorTextGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
