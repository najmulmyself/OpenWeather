// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:openweather/screens/location_screen.dart';
import 'package:openweather/services/location.dart';
import 'package:openweather/services/networking.dart';
import 'package:openweather/services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  Future<void> getLocationData() async {
WeatherModel weatherModel = WeatherModel();
var weatherData = weatherModel.getLocationWeather();
    // print(latitude);
    // print(longitude);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => LocationScreen(locationWeather: weatherData),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitPouringHourGlass(color: Colors.red, size: 100.0),
      ),
    );
  }
}
