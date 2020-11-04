import 'package:http/http.dart' as http;
import 'dart:convert';

const _ok = 200;

class NetworkHelper {
  final url;

  NetworkHelper(this.url);

  Future getUrlData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == _ok) {
      return jsonDecode(response.body);
    }

    return jsonDecode(response.body);
  }
}
