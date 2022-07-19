import 'package:http/http.dart' as http;
import 'dart:convert';

class Networkhelper {
  final url;
  Networkhelper(this.url);

  Future getData() async {
    final parsedUrl = Uri.parse(url);
    http.Response response = await http.get(parsedUrl);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
