import 'package:http/http.dart' as http;
import 'dart:convert';

class Networkhelper {
  final url;
  Networkhelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
