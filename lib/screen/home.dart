import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:openweather/modal/users.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var user = [];
  // const Home({ Key? key }) : super(key: key);
  @override
  void initState() {
    // user = LoadData();
    // super.initState();
    testLoad();
  }

  testLoad() async {
    // print('type : ${user.runtimeType} ');
    user = await LoadData();
  }

  LoadData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: user.length,
        itemBuilder: ((context, index) =>
            Text("User ${index + 1} : ${user[index].name}")));
  }
}
