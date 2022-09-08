import 'package:flutter/material.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoList());
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TIG333 TODO')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
        children: <Widget>[
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Write a book',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50, color: Colors.grey[100], child: Text('Do homework')),
          Container(
              height: 50, color: Colors.grey[100], child: Text('Tidy room')),
        ],
      ),
    );
  }
}
