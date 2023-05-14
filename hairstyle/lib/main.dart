import 'package:flutter/material.dart';
import 'package:hairstyle/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:hairstyle/provider/done_hair_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneHairProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Barber Places',
        // ignore: deprecated_member_use
        theme: ThemeData(),
        home: const SplashScreen(),
      ),
    );
  }
}
