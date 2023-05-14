import 'package:hairtrim/Models/hair_storage.dart';
import 'package:flutter/foundation.dart';

class DoneHairListProvider extends ChangeNotifier {
  final List<HairStorage> _doneHairStorageList = [];

  List<HairStorage> get doneHairSotrageList => _doneHairStorageList;

  void complete(HairStorage hair, bool isDone) {
    isDone ? _doneHairStorageList.add(hair) : _doneHairStorageList.remove(hair);
  }
}
