import 'package:flutter/material.dart';
import 'package:hairtrim/list_model.dart';
import 'package:provider/provider.dart';
import 'package:hairtrim/detail_screen.dart';
import 'package:hairtrim/Models/hair_storage.dart';
import 'package:hairtrim/Provider/done_hair_provider.dart';

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
        name: 'Rambut Lurus',
        modelRambut: 'Pria',
        banner: 'assets/images/rambut_lurus.jpg',
        rambut1: 'assets/images/lurus1.jpg',
        rambut2: 'assets/images/lurus1.jpg',
        rambut3: 'assets/images/lurus1.jpg',
        rambut4: 'assets/images/lurus1.jpg'),
    HairStorage(
        name: 'Rambut Bergelombang',
        modelRambut: 'Pria',
        banner: 'assets/images/rambut_gelombang.jpg',
        rambut1: 'assets/images/lurus1.jpg',
        rambut2: 'assets/images/lurus1.jpg',
        rambut3: 'assets/images/lurus1.jpg',
        rambut4: 'assets/images/lurus1.jpg'),
    HairStorage(
        name: 'Rambut Ikal',
        modelRambut: 'Pria',
        banner: 'assets/images/rambut_ikal.jpg',
        rambut1: 'assets/images/lurus1.jpg',
        rambut2: 'assets/images/lurus1.jpg',
        rambut3: 'assets/images/lurus1.jpg',
        rambut4: 'assets/images/lurus1.jpg'),
    HairStorage(
        name: 'Rambut Keriting',
        modelRambut: 'Pria',
        banner: 'assets/images/rambut_keriting.jpg',
        rambut1: 'assets/images/lurus1.jpg',
        rambut2: 'assets/images/lurus1.jpg',
        rambut3: 'assets/images/lurus1.jpg',
        rambut4: 'assets/images/lurus1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final HairStorage hair = hairStorageList[index];
        return InkWell(onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(hair: hair);
              },
            ),
          );
        }, child: Consumer<DoneHairListProvider>(
          builder: (context, DoneHairListProvider data, widget) {
            return ListModel(
                hair: hair,
                isDone: data.doneHairSotrageList.contains(hair),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneHairSotrageList.add(hair)
                          : data.doneHairSotrageList.remove(hair);
                    }
                  });
                });
          },
        ));
      },
    );
  }
}
