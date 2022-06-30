import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      forceAndroidLocationManager: true,
        desiredAccuracy: LocationAccuracy.low);
    print('something : ${position}');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Today march 27 , 2022'),
          const Text('Barcelona'),
          const Text('Spain'),
          const SizedBox(
            height: 30,
          ),
          CircleAvatar(
            maxRadius: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.format_color_reset_sharp),
                Text('10C'),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await getLocation();
              },
              child: const Text('Get current Location'))
        ],
      ),
    );
  }
}
