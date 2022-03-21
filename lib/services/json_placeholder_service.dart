import 'package:consumindo_api/models/todo_model.dart';
import 'package:dio/dio.dart';

import 'http_client_interface.dart';

class JsonPlaceHolderService {
  final url = 'http://jsonplaceholder.typicode.com/todos';
  final IHttpClient client;

  JsonPlaceHolderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = await client.get(url);
    final todos = (body as List).map(TodoModel.fromJson).toList();
    return todos;
  }
}
