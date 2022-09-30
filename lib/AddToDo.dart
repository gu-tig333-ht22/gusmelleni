// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'myState.dart';
import 'main.dart';

class AddToDo extends StatefulWidget {
  final Item item;
  AddToDo(this.item);

  @override
  State<AddToDo> createState() => AddToDoState();
}

class AddToDoState extends State<AddToDo> {
  static List<String> items = [];
  TextEditingController itemController = TextEditingController();

  List<String> get itemlist {
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Todo();
              }));
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
        child: Column(children: <Widget>[
          TextField(
              controller: itemController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
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
                padding: const EdgeInsets.fromLTRB(0, 47, 0, 0),
                child: _addItemButton(context),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget _addItemButton(context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      onPressed: () {
        if (itemController.text != '') {
          Navigator.pop(context,
              Item(title: itemController.text.toString(), done: false));
        }
      },
      child: Text('ADD'),
    );
  }
}
