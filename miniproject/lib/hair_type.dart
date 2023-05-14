import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:miniproject/model/hair_storage.dart';

class HairType extends StatelessWidget {
  final HairStorage storage;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const HairType({
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
                    storage.nama,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(storage.tipeRambut),
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
