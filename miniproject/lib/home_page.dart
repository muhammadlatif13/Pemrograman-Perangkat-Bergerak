import 'package:flutter/material.dart';
import 'package:miniproject/hair_list.dart';
import 'package:miniproject/model/hair_storage.dart';
import 'package:miniproject/done_hairstorage_list.dart';

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hair Style Application'),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DoneHairStorageList();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: HairList(doneHairStorageList: doneHairStorageList),
    );
  }
}
