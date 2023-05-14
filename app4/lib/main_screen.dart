import 'package:app4/done_weapon_storage_list.dart';
import 'package:app4/weapon_list.dart';
import 'package:flutter/material.dart';
import 'package:app4/model/weapon_storage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<WeaponStorage> doneWeaponStorageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CSGO Storage'),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DoneWeaponStorageList();
                }),
              );
            },
          )
        ],
      ),
      body: WeaponList(doneWeaponStorageList: doneWeaponStorageList),
    );
  }
}
