import 'package:app4/detail_screen.dart';
import 'package:app4/provider/done_weapon_provider.dart';
import 'package:app4/model/weapon_storage.dart';
import 'package:app4/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeaponList extends StatefulWidget {
  const WeaponList(
      {Key? key, required List<WeaponStorage> doneWeaponStorageList})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WeaponListState createState() => _WeaponListState();
}

class _WeaponListState extends State<WeaponList> {
  final List<WeaponStorage> weaponStorageList = [
    WeaponStorage(
        name: 'Melee',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/melee.png',
        gallery1: 'assets/images/weaponStorage/melee-weapon1.png',
        gallery2: 'assets/images/weaponStorage/melee-weapon2.png',
        gallery3: 'assets/images/weaponStorage/melee-weapon3.png',
        gallery4: 'assets/images/weaponStorage/melee-weapon4.png'),
    WeaponStorage(
        name: 'Pistols',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/pistols.png',
        gallery1: 'assets/images/weaponStorage/pistol-weapon1.png',
        gallery2: 'assets/images/weaponStorage/pistol-weapon2.png',
        gallery3: 'assets/images/weaponStorage/pistol-weapon3.png',
        gallery4: 'assets/images/weaponStorage/pistol-weapon4.png'),
    WeaponStorage(
        name: 'Shotguns',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/shotgun.png',
        gallery1: 'assets/images/weaponStorage/shotgun-weapon1.png',
        gallery2: 'assets/images/weaponStorage/shotgun-weapon2.png',
        gallery3: 'assets/images/weaponStorage/shotgun-weapon3.png',
        gallery4: 'assets/images/weaponStorage/shotgun-weapon4.png'),
    WeaponStorage(
        name: 'Machine Guns',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/heavy.png',
        gallery1: 'assets/images/weaponStorage/mg-weapon1.png',
        gallery2: 'assets/images/weaponStorage/mg-weapon2.png',
        gallery3: 'assets/images/weaponStorage/mg-weapon3.png',
        gallery4: 'assets/images/weaponStorage/mg-weapon4.png'),
    WeaponStorage(
        name: 'SMGs',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/smg.png',
        gallery1: 'assets/images/weaponStorage/smg-weapon1.png',
        gallery2: 'assets/images/weaponStorage/smg-weapon2.png',
        gallery3: 'assets/images/weaponStorage/smg-weapon3.png',
        gallery4: 'assets/images/weaponStorage/smg-weapon4.png'),
    WeaponStorage(
        name: 'Rifles',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/rifles.png',
        gallery1: 'assets/images/weaponStorage/rifle-weapon1.png',
        gallery2: 'assets/images/weaponStorage/rifle-weapon2.png',
        gallery3: 'assets/images/weaponStorage/rifle-weapon3.png',
        gallery4: 'assets/images/weaponStorage/rifle-weapon4.png'),
    WeaponStorage(
        name: 'Sniper Rifles',
        desc: 'CT & T Weapon | CSGO',
        banner: 'assets/images/sniper.png',
        gallery1: 'assets/images/weaponStorage/sniper-weapon1.png',
        gallery2: 'assets/images/weaponStorage/sniper-weapon2.png',
        gallery3: 'assets/images/weaponStorage/sniper-weapon3.png',
        gallery4: 'assets/images/weaponStorage/sniper-weapon4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final WeaponStorage storage = weaponStorageList[index];
        return InkWell(onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(storage: storage);
              },
            ),
          );
        }, child: Consumer<DoneWeaponProvider>(
          builder: (context, DoneWeaponProvider data, widget) {
            return ListItem(
                storage: storage,
                isDone: data.doneWeaponStorageList.contains(storage),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneWeaponStorageList.add(storage)
                          : data.doneWeaponStorageList.remove(storage);
                    }
                  });
                });
          },
        ));
      },
      itemCount: weaponStorageList.length,
    );
  }
}
