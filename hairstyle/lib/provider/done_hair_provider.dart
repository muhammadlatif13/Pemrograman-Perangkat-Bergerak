import 'package:flutter/material.dart';
import 'package:hairstyle/model/hair_storage.dart';

class DoneHairProvider extends ChangeNotifier {
  final List<HairStorage> _doneHairStorageList = [];

  List<HairStorage> get doneHairStorageList => _doneHairStorageList;

  void complete(HairStorage hair, bool isDone) {
    isDone ? _doneHairStorageList.add(hair) : _doneHairStorageList.remove(hair);
  }
}
