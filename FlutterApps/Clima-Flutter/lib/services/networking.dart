import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getUrlData() async {
    int ok = 200;
    var data;

    http.Response response = await http.get(url);
    if (response.statusCode == ok) {
      data = jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
    return data;
  }
}
