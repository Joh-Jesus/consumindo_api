import 'package:consumindo_api/models/todo_model.dart';
import 'package:consumindo_api/services/dio_client.dart';
import 'package:consumindo_api/services/json_placeholder_service.dart';
import 'package:flutter/foundation.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceHolderService _service;
  var todos = <TodoModel>[];
  HomeController(this._service);

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
