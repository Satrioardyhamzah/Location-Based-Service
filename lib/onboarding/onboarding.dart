import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pelayanankesehatan/onboarding/button_widget.dart';
import 'package:pelayanankesehatan/splash_screen.dart';
import 'package:pelayanankesehatan/about/about.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class OnBoardingPage2 extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) => SafeArea(
    
          child: IntroductionScreen(
              
          pages: [
            PageViewModel(
              title: 'Stay Health App',
              body: 'Klik untuk masuk ke Aplikasi',
              image: buildImage('assets/rs2.png'),
              footer: ButtonWidget(
                text: 'Masuk',
                onClicked: () => goToHome(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Tentang',
              body: '',
              footer: ButtonWidget(
                text: 'Masuk',
                onClicked: () => goToHome1(context),
              ),
              image: buildImage('assets/about.png'),
              decoration: getPageDecoration(),
            ),
            
          ],
          done: Text('-', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => AboutPage(),
          next: Icon(Icons.arrow_forward_ios_rounded),
          dotsDecorator: getDotDecoration(),
        ),
        
  );
  
  }
  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );

  void goToHome1(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => AboutPage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 250));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color.fromARGB(255, 67, 227, 252),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      
      );
      


