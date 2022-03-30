import 'package:http/http.dart' as http;
import 'package:openweather/modal/posts.dart';
// import 'package:openweather/modal/test.dart';

class Remote {
  Future getData() async {
    // Future Response = await http.get(Uri.parse('htstp://api.openweathermap.org/data/2.5/forecast?id=524901&appid={apiKey}'));

    // Test Api

    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    if (response.statusCode == 200) {
      var json = response.body;
      // return Posts.fromJson(json);
      return postsFromJson(json);
    } else {
      print('fuck you');
    }
    // return json;
    // print(test);
  }
}
