import 'package:flutter/material.dart';
import 'package:imc_app/constants.dart';
import 'package:imc_app/pages/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator IMC',
        theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kBackgroundColor,
        ),
      ),
      home: CalculatorPage(),
    );
  }
}
