import 'package:flutter/material.dart';

// ignore: camel_case_types
class Detail_Screen extends StatelessWidget {
  const Detail_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/images/csgo.png'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "Weapon Storage | CS:GO",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Abril',
                ),
              ),
            ), //Container for Title

            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.attach_money),
                      Text('Tidak Dijual!'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.videogame_asset),
                      Text('CSGO Storage!'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      Text('Open Everyday!'),
                    ],
                  )
                ],
              ),
            ), //Container for Icon

            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue est a mi mollis, et ultrices diam tempus. Vestibulum purus.',
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
                    child: Image.asset('assets/images/weapon1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/weapon2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/weapon3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/weapon4.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/weapon4.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
