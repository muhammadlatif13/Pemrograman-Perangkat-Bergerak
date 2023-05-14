import 'package:flutter/material.dart';
import 'package:app3/model/weapon_storage.dart';
import 'package:app3/model/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CSGO Storage'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final WeaponStorage storage = weaponStorageList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(storage: storage);
              }));
            },
            child: listItem(storage),
          );
        },
        itemCount: weaponStorageList.length,
      ),
    );
  }

  Widget listItem(WeaponStorage storage) {
    return Card(
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
        )
      ],
    )); // Card
  }
}
