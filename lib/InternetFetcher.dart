// ignore_for_file: file_names

import 'package:http/http.dart' as http;
import 'myState.dart';
import 'dart:convert';

class InternetFetcher {
  static Future fetchItems() async {
    http.Response response = await http.get(Uri.parse(
        'https://todoapp-api.apps.k8s.gu.se/todos?key=1bf0e534-eea6-4b24-b866-dad42ab6dbb8'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      final List decodedList = json.decode(jsonData);
      List list = decodedList.map((val) => Item.fromJson(val)).toList();
      return list;
    } else {
      print("Bad connection to API.");
    }
  }

  static Future addItem(String title, bool done) async {
    http.Response response = await http.post(
      Uri.parse(
          'https://todoapp-api.apps.k8s.gu.se/todos?key=1bf0e534-eea6-4b24-b866-dad42ab6dbb8'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'title': title,
        'done': done,
      }),
    );
    var status = response.statusCode;
    return status;
  }

  static Future updateItem(String id, String title, bool done) async {
    http.Response response = await http.put(
        Uri.parse(
            'https://todoapp-api.apps.k8s.gu.se/todos/$id?key=1bf0e534-eea6-4b24-b866-dad42ab6dbb8'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'title': title,
          'done': done,
        }));
    var status = response.statusCode;
    return status;
  }

  static Future deleteItem(String id) async {
    http.Response response = await http.delete(Uri.parse(
        'https://todoapp-api.apps.k8s.gu.se/todos/$id?key=1bf0e534-eea6-4b24-b866-dad42ab6dbb8'));
    var status = response.statusCode;
    return status;
  }
}
