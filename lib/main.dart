import 'package:currency_rate_ddd/application/rates/get_rates/rate_bloc.dart';
import 'package:currency_rate_ddd/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/rates/rates_page.dart';

void main() async{

  await initInjections();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Currency Rate App By DDD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Satoshi",
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=> getIt<RateBloc>()),
        ],
        child: const RatesPage(),
      ),
    );
  }
}