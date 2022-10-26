// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'my_state.dart';
import 'main.dart';

class AddToDo extends StatelessWidget {
  AddToDo(this.item, {super.key});
  final Item item;
  final TextEditingController itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const Todo();
              }));
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        title: const Text(
          'TIG333 TODO',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        alignment: AlignmentDirectional.topCenter,
        child: Column(children: <Widget>[
          TextField(
              controller: itemController,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                  ),
                  labelText: 'What are you going to do?')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
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
      child: const Text('ADD'),
    );
  }
}
