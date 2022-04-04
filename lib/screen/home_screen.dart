import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic post;
  @override
  void initState() {
    super.initState();
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
            onPressed: () {},
            child: const Text('Get Location'),
          )
        ],
      ),
    );
  }
}
