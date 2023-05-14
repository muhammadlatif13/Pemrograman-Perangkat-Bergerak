import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:miniproject/hair_type.dart';
import 'package:miniproject/model/hair_storage.dart';
import 'package:miniproject/detail_screen.dart';
import 'package:miniproject/done_hair_provider.dart';

class HairList extends StatefulWidget {
  const HairList({Key? key, required List<HairStorage> doneHairStorageList})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HairListState createState() => _HairListState();
}

class _HairListState extends State<HairList> {
  final List<HairStorage> hairStorageList = [
    HairStorage(
      nama: 'Straight Hair',
      banner: 'assets/images/rambut_lurus.png',
      tipeRambut: 'Lorem Ipsum',
      modelRambut1: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut2: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut3: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut4: 'assets/images/tipeRambut/rambut_lurus.png',
    ),
    HairStorage(
      nama: 'Wavy Hair',
      banner: 'assets/images/rambut_gelombang.png',
      tipeRambut: 'Lorem Ipsum',
      modelRambut1: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut2: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut3: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut4: 'assets/images/tipeRambut/rambut_lurus.png',
    ),
    HairStorage(
      nama: 'Frizz Hair',
      banner: 'assets/images/rambut_ikal.png',
      tipeRambut: 'Lorem Ipsum',
      modelRambut1: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut2: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut3: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut4: 'assets/images/tipeRambut/rambut_lurus.png',
    ),
    HairStorage(
      nama: 'Curly Hair',
      banner: 'assets/images/rambut_keriting.png',
      tipeRambut: 'Lorem Ipsum',
      modelRambut1: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut2: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut3: 'assets/images/tipeRambut/rambut_lurus.png',
      modelRambut4: 'assets/images/tipeRambut/rambut_lurus.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final HairStorage storage = hairStorageList[index];
        return InkWell(onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(storage: storage);
              },
            ),
          );
        }, child: Consumer<DoneHairProvider>(
          builder: (context, DoneHairProvider data, widget) {
            return HairType(
                storage: storage,
                isDone: data.doneHairStorageList.contains(storage),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneHairStorageList.add(storage)
                          : data.doneHairStorageList.remove(storage);
                    }
                  });
                });
          },
        ));
      },
      itemCount: hairStorageList.length,
    );
  }
}
