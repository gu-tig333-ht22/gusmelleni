import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_state.dart';

class ItemList extends StatelessWidget {
  final List<Item> items;
  final String filter;
  const ItemList(this.items, this.filter, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => listItems(context, items[index]),
        padding: const EdgeInsets.fromLTRB(4, 15, 0, 0),
        scrollDirection: Axis.vertical,
        itemCount: items.length);
  }
}

Widget listItems(context, item) {
  return (Container(
      padding: const EdgeInsets.all(6.5),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(90, 48, 47, 47)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              checkColor: Colors.black,
              activeColor: Colors.transparent,
              value: item.done,
              onChanged: ((value) {
                var state = Provider.of<MyState>(context, listen: false);
                if (!item.done) {
                  state.checkItem(item);
                } else {
                  state.uncheckItem(item);
                }
              })),
          Text(item.title,
              style: TextStyle(
                  fontSize: 25,
                  decoration: item.done ? TextDecoration.lineThrough : null)),
          const Spacer(),
          IconButton(
              onPressed: () {
                var state = Provider.of<MyState>(context, listen: false);
                state.deleteTodoListItem(item);
              },
              icon: const Icon(Icons.close))
        ],
      )));
}
