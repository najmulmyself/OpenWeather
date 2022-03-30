import 'package:http/http.dart' as http;
import 'package:openweather/modal/test.dart';

class Remote {
  getData() async {
    // Future Response = await http.get(Uri.parse('htstp://api.openweathermap.org/data/2.5/forecast?id=524901&appid={apiKey}'));

    // Test Api

    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    return usersFromJson(response.body);
    // return json;
    // print(test);
  }
}
