import 'package:flutter/material.dart';
import 'package:openweather/screens/city_screen.dart';
import 'package:openweather/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: CityScreen(),
    );
  }
}
