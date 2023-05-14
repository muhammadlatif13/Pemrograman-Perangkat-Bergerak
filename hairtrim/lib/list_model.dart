import 'package:flutter/material.dart';
import 'package:hairtrim/Models/hair_storage.dart';

class ListModel extends StatelessWidget {
  final HairStorage hair;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListModel({
    Key? key,
    required this.hair,
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
                hair.banner,
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
                    hair.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(hair.modelRambut),
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
