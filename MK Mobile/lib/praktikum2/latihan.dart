import 'package:flutter/material.dart';

class Latihan extends StatefulWidget {
  const Latihan({Key? key}) : super(key: key);

  @override
  State<Latihan> createState() => _Latihan();
}

class _Latihan extends State<Latihan> {
  int _counter = 0;
  String _text = "Genap";

  void _incrementCounter() {
    setState(() {

      _counter++;

      _text = "Genap : ";
      for(int i=1; i<=_counter; i++){
        if(i%3 == 0) {
          if (i % 2 == 0) {
            _text += '${i}, ';
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
