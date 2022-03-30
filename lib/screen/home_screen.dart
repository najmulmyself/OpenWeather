import 'package:flutter/material.dart';
// import 'package:openweather/modal/test.dart';
import 'package:openweather/modal/test2.dart';


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
  dynamic post;
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
    post = await Remote().getData();
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     children: [
    // Text('Today march 27 , 2022'),
    // Text('Barcelona'),
    // Text('Spain'),
    // SizedBox(
    //   height: 30,
    // ),
    // CircleAvatar(
    //   maxRadius: 120,
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Icon(Icons.format_color_reset_sharp),
    //       Text('10C'),
    //     ],
    //   ),
    // ),
    //       ListView.builder(
    //         itemBuilder: (c, i) => Container(
    //           child: Text(post[i].title),
    //         ),
    //         itemCount: post.length,
    //       )
    //     ],
    //   ),
    // );

    // return ListView.builder(
    //   itemCount: post!.length,
    //   itemBuilder: (c, i) => Container(
    //     child: Text(post[i].title),
    //   ),
    // );
    return Container(
      child: Column(
        children: [
          Text(post[0].id.toString()),
          Text(post[0].title),
          Text(post[0].body),
        ],
      ),
    );
  }
}
