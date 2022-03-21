import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      log(response.body);
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
