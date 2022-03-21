import 'package:consumindo_api/controllers/home_controller.dart';
import 'package:consumindo_api/services/dio_client.dart';
import 'package:consumindo_api/services/json_placeholder_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.fetchAllTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return ListView.builder(
              itemCount: controller.todos.length,
              itemBuilder: (context, index) {
                final todo = controller.todos[index];
                return ListTile(
                  title: Text(todo.title),
                );
              });
        },
      ),
    );
  }
}
