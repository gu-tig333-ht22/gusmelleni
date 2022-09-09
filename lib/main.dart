// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:html';

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
                fontWeight: FontWeight.w500, fontSize: 28, color: Colors.black),
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddToDo()));
        },
        label: const Text('Add'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.grey[400],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Write a book',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Do homework',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outlined),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Tidy room',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            decoration: TextDecoration.lineThrough)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Watch TV',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Nap',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Shop groceries',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Have fun',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              height: 50,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text('Meditate',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Icon(Icons.close),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class AddToDo extends StatelessWidget {
  const AddToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        title: const Text(
          'TIG333 TODO',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        alignment: AlignmentDirectional.topCenter,
        child: Column(
          children: <Widget>[
            const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                    ),
                    labelText: 'What are you going to do?')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 47, 0, 0),
                  child: Icon(Icons.add),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 47, 0, 0),
                  child: Text('ADD',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
