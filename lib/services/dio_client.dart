import 'package:consumindo_api/services/http_client_interface.dart';
import 'package:dio/dio.dart';

class DioClient implements IHttpClient {
  final dio = Dio();
  @override
  Future get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
