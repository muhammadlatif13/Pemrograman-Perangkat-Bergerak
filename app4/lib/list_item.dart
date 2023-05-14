import 'package:flutter/material.dart';
import 'package:app4/model/weapon_storage.dart';

class ListItem extends StatelessWidget {
  final WeaponStorage storage;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    Key? key,
    required this.storage,
    required this.isDone,
    required this.onCheckboxClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Image.asset(
                storage.banner,
                width: 100.0,
                height: 100.0,
              )),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    storage.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(storage.desc),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: Colors.blueAccent,
            value: isDone,
            onChanged: onCheckboxClick,
          ),
        ],
      ),
    );
  }
}
