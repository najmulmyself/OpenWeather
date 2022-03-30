import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:openweather/modal/test.dart';

const apiKey = 'c1478dff46b3220baeb2e7127cb080f4';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getData() async {
    // Future Response = await http.get(Uri.parse('htstp://api.openweathermap.org/data/2.5/forecast?id=524901&appid={apiKey}'));

    // Test Api

    http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    return usersFromJson(response.body);
    // print(test);
  }

  // var test = getData;
  var test;
  @override
  void initState() {
    super.initState();
    getData();
    // print(getData());
    test = getData();
  }

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
          ),
          Text(test[0]['name'])
        ],
      ),
    );
  }
}
