import 'package:flutter/material.dart';
import 'package:hello_world/praktikum2/main2.dart';
import 'package:hello_world/praktikum3/main3.dart';
import 'package:hello_world/praktikum4/main4.dart';

void main() {
  runApp(
      MaterialApp(
          title: "App",
          home: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WPPB"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Main2()
                )
                );
              }, child: Text("Praktikum 2")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Main3()
                )
                );
              }, child: Text("Praktikum 3")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Main4()
                )
                );
              }, child: Text("Praktikum 4")),
            ],
          )
      ),
    );
  }
}