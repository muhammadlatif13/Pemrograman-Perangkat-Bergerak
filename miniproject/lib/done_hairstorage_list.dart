import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:miniproject/model/hair_storage.dart';
import 'package:miniproject/done_hair_provider.dart';

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
        title: const Text('Storage Sudah Dilihat!'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final HairStorage storage = doneHairStorageList[index];
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
                          storage.nama,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(storage.tipeRambut),
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
