import 'package:flutter/material.dart';
import 'package:hairtrim/Models/hair_storage.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.hair}) : super(key: key);

  final HairStorage hair;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(hair.name),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                hair.banner,
                height: 275,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Text(hair.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Abril',
                      ))),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Icon(Icons.attach_money),
                        Text('Not for Sale!'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.storage),
                        Text('Weapon Storage!'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.gamepad),
                        Text('Skin Collection!'),
                      ],
                    )
                  ],
                ),
              ), //Container for Icon

              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ), //Container for Description

              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(hair.rambut1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(hair.rambut2),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(hair.rambut3),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(hair.rambut4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
