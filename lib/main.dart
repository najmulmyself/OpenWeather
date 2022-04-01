import 'package:flutter/material.dart';
// import 'package:openweather/screen/User.dart';
import 'package:openweather/screen/home.dart';
// import 'package:openweather/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Home(),
      ),
    );
  }
}
