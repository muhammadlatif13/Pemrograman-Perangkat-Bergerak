import 'package:flutter/material.dart';
import 'package:hairstyle/provider/done_hair_provider.dart';
import 'package:provider/provider.dart';
import 'package:hairstyle/model/hair_storage.dart';

class DoneHairStorageList extends StatelessWidget {
  const DoneHairStorageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HairStorage> doneHairStorageList = Provider.of<DoneHairProvider>(
      context,
      listen: false,
    ).doneHairStorageList;

    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text('Barber yang Sudah Dikunjungi'),
        backgroundColor: const Color.fromARGB(255, 0, 85, 182),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final HairStorage storage = doneHairStorageList[index];
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.greenAccent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      color: Colors.black,
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
                          storage.nama,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.done_outline)
              ],
            ),
          );
        },
        itemCount: doneHairStorageList.length,
      ),
    );
  }
}
