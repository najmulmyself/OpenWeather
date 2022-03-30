import 'package:flutter/material.dart';
import 'package:openweather/modal/test.dart';
import 'package:openweather/modal/test2.dart';

const apiKey = 'c1478dff46b3220baeb2e7127cb080f4';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // getData() async {
  //   // Future Response = await http.get(Uri.parse('htstp://api.openweathermap.org/data/2.5/forecast?id=524901&appid={apiKey}'));

  //   // Test Api

  //   http.Response response = await http.get(
  //     Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //   );
  //   return usersFromJson(response.body);
  //   // print(test);
  // }

  // var test = getData;
  List? post;
  @override
  void initState() {
    super.initState();
    // getData();
    getUser();
    // baal = Remote().getData();
    // print(getData());
    // test = getData();
  }

  getUser() async {
    usr = await Remote().getData();
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
          ListView.builder(
            itemBuilder: (c, i) => Container(
              child: Text(usr![i].title),
            ),
            itemCount: usr.length,
          )
        ],
      ),
    );

    // return ListView.builder(
    //   itemCount: usr.length,
    //   itemBuilder: (c, i) => Container(
    //     child: Text(usr[i].title),
    //   ),
    // );
  }
}
