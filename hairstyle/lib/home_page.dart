import 'package:flutter/material.dart';
import 'package:hairstyle/hair_list.dart';
import 'package:hairstyle/model/hair_storage.dart';
import 'package:hairstyle/done_hair_storage_list.dart';

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
        backgroundColor: const Color.fromARGB(255, 0, 85, 182),
        title: const Text(
          'Barber Place',
          style: TextStyle(),
        ),
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
