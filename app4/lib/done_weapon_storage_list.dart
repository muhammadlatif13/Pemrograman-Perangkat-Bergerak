import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app4/model/weapon_storage.dart';
import 'package:app4/provider/done_weapon_provider.dart';

class DoneWeaponStorageList extends StatelessWidget {
  const DoneWeaponStorageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WeaponStorage> doneWeaponStorageList =
        Provider.of<DoneWeaponProvider>(
      context,
      listen: false,
    ).doneWeaponStorageList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Sudah Dilihat!'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final WeaponStorage storage = doneWeaponStorageList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const Icon(Icons.done_outline)
              ],
            ),
          );
        },
        itemCount: doneWeaponStorageList.length,
      ),
    );
  }
}
