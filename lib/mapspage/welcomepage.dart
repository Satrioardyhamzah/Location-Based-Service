import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pelayanankesehatan/mapspage/apotek/MapsPage.dart';
import 'package:pelayanankesehatan/onboarding/button_widget.dart';
import 'package:pelayanankesehatan/splash_screen.dart';
import 'package:pelayanankesehatan/mapspage/rumahsakit/MapsPage.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';
import 'package:pelayanankesehatan/mapspage/klinik/MapsPage.dart';
import 'package:pelayanankesehatan/mapspage/prakterdokter/MapsPage.dart';


class OnBoardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        
        leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBoardingPage(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
        
      ),
    body : SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Rumah Sakit',
              body: 'Klik untuk melihat tampilan maps Rumah Sakit',
              image: buildImage('assets/hospitalnew.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Klinik',
              body: 'Klik untuk melihat tampilan maps Klinik',
              image: buildImage('assets/clinicnew.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome2(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Praktek Dokter',
              body: 'Klik untuk melihat tampilan maps Praktek Dokter',
              image: buildImage('assets/doctornew.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome3(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Apotik',
              body: 'Klik untuk melihat tampilan maps Apotek',
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome4(context),
              ),
              image: buildImage('assets/drugstorenew.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('-', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => MapsPage(),
          next: Icon(Icons.arrow_forward_ios_sharp),
          dotsDecorator: getDotDecoration(),
        ),
      ));
  }
  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MapsPage()),
      );

  void goToHome2(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MapsPage2()),
      );

  void goToHome3(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MapsPage3()),
      );
  void goToHome4(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MapsPage4()),
      );
  

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 250));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color.fromARGB(255, 67, 227, 252),
        size: Size(10, 10),
        activeSize: Size(15, 10),
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
}
