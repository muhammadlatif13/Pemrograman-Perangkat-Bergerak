import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hairtrim/Provider/done_hair_provider.dart';
import 'package:hairtrim/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneHairListProvider(),
      child: MaterialApp(
        title: 'Hiar Model Application',
        theme: ThemeData(),
        home: const HomePage(),
      ),
    );
  }
}
