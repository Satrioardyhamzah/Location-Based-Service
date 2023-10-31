import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/splash_screen.dart';
import 'package:pelayanankesehatan/mapspage/prakterdokter/MapsPage.dart';
import 'package:pelayanankesehatan/onboardingnew/pages/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Pelayanan Kesehatan';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Color.fromARGB(255, 117, 224, 240),
        home: SplashScreen(), 
      );
}
