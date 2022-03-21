import 'dart:convert';

import 'package:consumindo_api/services/http_client_interface.dart';
import 'package:http/http.dart' as http;

class HttpPackageClient implements IHttpClient {
  @override
  Future get(String url) async {
    final response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
