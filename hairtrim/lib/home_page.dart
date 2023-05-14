import 'package:flutter/material.dart';
import 'package:hairtrim/done_hair_list.dart';
import 'package:hairtrim/hair_list.dart';
import 'package:hairtrim/Models/hair_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<HairStorage> doneHairStorageList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Hair Model Application'),
          actions: [
            IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DoneHairStorageList();
                  }),
                );
              },
            )
          ],
        ),
        body: HairList(doneHairStorageList: doneHairStorageList),
      ),
    );
  }
}
