import 'package:bmi_calculator/main_bmi_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xff0A0E20),
        ),
        scaffoldBackgroundColor: const Color(0xff0A0E20),
      ),
      home: const MainBmiPage(),
    );
  }
}

