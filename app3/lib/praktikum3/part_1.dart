import 'package:flutter/material.dart';
import 'package:app3/praktikum3/part_1/percobaan1.dart';
import 'package:app3/praktikum3/part_1/percobaan2.dart';
import 'package:app3/praktikum3/part_1/percobaan3.dart';
import 'package:app3/praktikum3/part_1/detail_screen.dart';

void main() {
  runApp(const Part_1());
}

// ignore: camel_case_types
class Part_1 extends StatelessWidget {
  const Part_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 3.1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Praktikum 3.1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Percobaan1(),
                        ),
                      );
                    },
                    child: const Text('Percobaan 1'),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Percobaan2(),
                        ),
                      );
                    },
                    child: const Text('Percobaan 2'),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Percobaan3(),
                        ),
                      );
                    },
                    child: const Text('Percobaan 3'),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Detail_Screen(),
                        ),
                      );
                    },
                    child: const Text('Percobaan 4'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
