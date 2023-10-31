import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pelayanankesehatan/onboarding/button_widget.dart';
import 'package:pelayanankesehatan/onboarding/onboarding.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/listpage.dart';
import 'package:pelayanankesehatan/pagelist/pagelist2/listpage.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/listpage.dart';
import 'package:pelayanankesehatan/pagelist/pagelist4/listpage.dart';
import 'package:pelayanankesehatan/splash_screen.dart';
import 'package:pelayanankesehatan/mapspage/rumahsakit/MapsPage.dart';
import 'package:pelayanankesehatan/mapspage/welcomepage.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        
        leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBoardingPage2(),
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
              title: 'Maps',
              body: 'Klik untuk melihat tampilan Maps',
              image: buildImage('assets/maps.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome5(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Rumah Sakit',
              body: 'Klik untuk mencari Rumah Sakit',
              image: buildImage('assets/rs.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Klinik',
              body: 'Klik untuk mencari Klinik',
              image: buildImage('assets/drugstore.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome2(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Praktek Dokter',
              body: 'Klik untuk mencari Praktek Dokter',
              image: buildImage('assets/dokter.png'),
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome3(context),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Apotik',
              body: 'Klik untuk mencari Apotik',
              footer: ButtonWidget(
                text: 'Yuk Cari!',
                onClicked: () => goToHome4(context),
              ),
              image: buildImage('assets/medicine.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('-', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => pagelist4(),
          next: Icon(Icons.arrow_forward_ios_sharp),
          dotsDecorator: getDotDecoration(),
        ),
      ));
  }
  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => pagelist1()),
      );

  void goToHome2(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => pagelist2()),
      );

  void goToHome3(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => pagelist3()),
      );
  void goToHome4(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => pagelist4()),
      );
  void goToHome5(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage3()),
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
