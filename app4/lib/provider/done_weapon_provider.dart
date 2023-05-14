import 'package:app4/model/weapon_storage.dart';
import 'package:flutter/foundation.dart';

class DoneWeaponProvider extends ChangeNotifier {
  final List<WeaponStorage> _doneWeaponStorageList = [];

  List<WeaponStorage> get doneWeaponStorageList => _doneWeaponStorageList;

  void complete(WeaponStorage storage, bool isDone) {
    isDone
        ? _doneWeaponStorageList.add(storage)
        : _doneWeaponStorageList.remove(storage);
  }
}
