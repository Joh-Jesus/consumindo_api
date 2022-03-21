import 'package:consumindo_api/controllers/home_controller.dart';
import 'package:consumindo_api/models/todo_model.dart';
import 'package:consumindo_api/services/json_placeholder_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceHolderServiceMock extends Mock
    implements JsonPlaceHolderService {}

void main() {
  test('deve prencher a lista', () async {
    final service = JsonPlaceHolderServiceMock();
    when(() => service.getTodos()).thenAnswer((_) async => [TodoModel.stub()]);
    final controller = HomeController(service);
    await controller.fetchAllTodos();
    expect(controller.todos.length, 1);
  });
}
