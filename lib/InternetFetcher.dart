// ignore_for_file: file_names

import 'package:http/http.dart' as http;
import 'myState.dart';
import 'dart:convert';

class InternetFetcher {
  static Future fetchItems() async {
    http.Response response = await http.get(Uri.parse(
        'https://todoapp-api.apps.k8s.gu.se/todos?key=f43ba627-9fa6-4616-8041-c46abac1fdc9'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      final List decodedList = json.decode(jsonData);
      List list = decodedList.map((val) => Item.fromJson(val)).toList();
      return list;
    } else {
      throw ("Bad connection to API.");
    }
  }

  static Future addItem(String title, bool done) async {
    http.Response response = await http.post(
      Uri.parse(
          'https://todoapp-api.apps.k8s.gu.se/todos?key=f43ba627-9fa6-4616-8041-c46abac1fdc9'),
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
            'https://todoapp-api.apps.k8s.gu.se/todos/$id?key=f43ba627-9fa6-4616-8041-c46abac1fdc9'),
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
        'https://todoapp-api.apps.k8s.gu.se/todos/$id?key=f43ba627-9fa6-4616-8041-c46abac1fdc9'));
    var status = response.statusCode;
    return status;
  }
}
