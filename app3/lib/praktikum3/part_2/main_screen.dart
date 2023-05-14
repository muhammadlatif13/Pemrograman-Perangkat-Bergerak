import 'package:flutter/material.dart';
import 'package:app3/model/weapon_storage.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required WeaponStorage desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CSGO Storage'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final WeaponStorage desc = weaponStorageList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen(desc: desc);
              }));
            },
            child: listItem(desc),
          );
        },
        itemCount: weaponStorageList.length,
      ),
    );
  }

  Widget listItem(WeaponStorage desc) {
    return Card(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(flex: 1, child: Image.asset('assets/images/csgo.png')),
        Expanded(
          flex: 2,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Text(
                    'Rifles',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('AK-47'),
                ],
              )),
        )
      ],
    )); // Card
  }
}
