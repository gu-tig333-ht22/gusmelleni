// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'InternetFetcher.dart';

class Item {
  String? id;
  String? title;
  bool? done;

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    done = json['done'];
  }

  Item({this.id, required this.title, required this.done});
}

class MyState extends ChangeNotifier {
  static List<Item> items = [];
  TextEditingController itemController = TextEditingController();

  List<Item> get itemlist {
    return items;
  }

  String _filter = 'Show All';
  String get filter => _filter;

  MyState() {
    fetchItems();
  }

  void updateFilter(String val) {
    _filter = val;
    notifyListeners();
  }

  void fetchItems() async {
    var itemlist = await InternetFetcher.fetchItems();
    items = itemlist;
    notifyListeners();
  }

  void addItemToList(Item item) async {
    await InternetFetcher.addItem(item.title ?? '', item.done ?? false);
    fetchItems();
    notifyListeners();
  }

  void deleteTodoListItem(Item item) async {
    await InternetFetcher.deleteItem(item.id ?? '');
    fetchItems();
    notifyListeners();
  }

  void checkItem(Item item) async {
    await InternetFetcher.updateItem(item.id ?? '', item.title ?? '', true);
    fetchItems();
    notifyListeners();
  }

  void uncheckItem(Item item) async {
    await InternetFetcher.updateItem(item.id ?? '', item.title ?? '', false);
    fetchItems();
    notifyListeners();
  }
}
