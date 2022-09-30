// ignore_for_file: prefer_const_constructors, use_build_context_synchronously
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/myState.dart';
import 'AddToDo.dart';
import 'ItemList.dart';

void main() {
  var state = MyState();
  runApp(
    ChangeNotifierProvider(
      create: (context) => state,
      child: const Todo(),
    ),
  );
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoList());
  }
}

// ignore: use_key_in_widget_constructors
class TodoList extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  TodoListState createState() => TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> items = [];
  TextEditingController itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[400],
          centerTitle: true,
          title: const Text(
            'TIG333 TODO',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 28, color: Colors.black),
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var newItem = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AddToDo(Item(id: '', title: '', done: false))));
          [
            newItem is Item
                ? Provider.of<MyState>(context, listen: false)
                    .addItemToList(newItem)
                : ""
          ];
        },
        label: const Text('Add'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.grey[400],
      ),
      body: Consumer<MyState>(
        builder: (context, state, child) =>
            ItemList(state.itemlist, state.filter),
      ),
    );
  }
}
