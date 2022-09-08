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

// ignore: use_key_in_widget_constructors
class TodoList extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[400],
          centerTitle: true,
          title: const Text(
            'TIG333 TODO',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
          )),
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
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Do homework',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box),
                  Text('Tidy room',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          decoration: TextDecoration.lineThrough)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Watch TV',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Nap',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Shop groceries',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Have fun',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
          Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text('Meditate',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  Icon(Icons.close)
                ],
              )),
        ],
      ),
    );
  }
}
