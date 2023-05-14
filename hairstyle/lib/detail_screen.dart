import 'package:flutter/material.dart';
import 'package:hairstyle/model/hair_storage.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.storage}) : super(key: key);

  final HairStorage storage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          storage.nama,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 20.0),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 85, 182),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                storage.banner,
                color: Colors.black,
                height: 275,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Text(storage.nama,
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
                        Icon(
                          Icons.access_time,
                          color: Colors.red,
                        ),
                        Text('08.00 - 22.00'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(
                          Icons.attach_money_outlined,
                          color: Colors.green,
                        ),
                        Text('Affordable Price'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(
                          Icons.date_range,
                          color: Colors.blue,
                        ),
                        Text('Open Everyday!'),
                      ],
                    )
                  ],
                ),
              ), //Container for Icon

              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis nibh, suscipit viverra porttitor et, posuere sodales odio. Fusce eu dui in purus porta interdum. Sed condimentum risus a dui faucibus molestie. Cras eget augue eget eros sodales pharetra. Nam elit massa, maximus vel laoreet ut, gravida nec turpis. Sed nunc leo, lacinia ut tellus vitae, tempus consectetur purus. Aliquam erat volutpat. Nunc suscipit dapibus facilisis. Etiam sit amet lorem volutpat, mollis sem eget, facilisis elit.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ), //Container for Description

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(storage.modelRambut1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(storage.modelRambut2),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(storage.modelRambut3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(storage.modelRambut4),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
