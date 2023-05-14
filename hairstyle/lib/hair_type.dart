import 'package:flutter/material.dart';
import 'package:hairstyle/model/hair_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class HairType extends StatelessWidget {
  final HairStorage storage;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const HairType({
    Key? key,
    required this.storage,
    required this.isDone,
    required this.onCheckboxClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: isDone ? Colors.greenAccent : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(
                storage.banner,
                width: 150.0,
                height: 150.0,
                color: Colors.black,
              ),
            ),
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
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      storage.jalan,
                      style: const TextStyle(
                          fontFamily: 'Poppins', fontStyle: FontStyle.italic),
                    ),
                    GestureDetector(
                      // ignore: deprecated_member_use
                      onTap: () => launch(storage.lokasi),
                      child: const Text.rich(
                        TextSpan(
                          text: 'Kunjungi Alamat - ',
                          children: [
                            TextSpan(
                              text: 'www.maps.com',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Checkbox(
              checkColor: Colors.blueAccent,
              value: isDone,
              onChanged: onCheckboxClick,
            ),
          ],
        ),
      ),
    );
  }
}
