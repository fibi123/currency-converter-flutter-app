import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_home_page.dart';
import 'package:currency_converter/currency_converter_cupertino_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
  }

  class MyCupertinoApp extends StatelessWidget {
    const MyCupertinoApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        home: CurrencyConverterCupertinoPage(),
      );
    }
  }
