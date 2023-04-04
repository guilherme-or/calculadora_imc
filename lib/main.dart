import 'package:calculadora_imc/constants.dart';
import 'package:calculadora_imc/pages/calculadora_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora IMC',
      home: CalculadoraPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kBackgroundColor,
        ),
      ),
    );
  }
}
