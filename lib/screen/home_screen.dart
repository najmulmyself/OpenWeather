import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Today march 27 , 2022'),
          Text('Barcelona'),
          Text('Spain'),
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            maxRadius: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.format_color_reset_sharp),
                Text('10C'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
