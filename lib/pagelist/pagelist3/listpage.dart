import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/model.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/pilihan.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/MenuItemCard.dart';

class pagelist3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: height * 0.3,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/2.jpg"),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(1.0),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 20,
                  child: RichText(
                    text: TextSpan(
                        text: "Praktek Dokter",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20), // TextStyle
                        children: [
                          TextSpan(
                              text: "\n Yang Tersedia",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24)) // TextStyle // TextSpan
                        ]), // TextSpan
                  ), // RichText
                ),
                Positioned(
                  left: 30,
                  top: height * 0.05,
                  child: GestureDetector(
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
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ), // Positioned// Container
              ], //<Widget>[]
            ),
            Transform.translate(
              offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
              child: Container(
                width: width,
                height: 1000,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: DefaultTabController(
                    length: 1,
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: <Widget>[
                            Tab(
                              child: Text("Silahkan pilih rumah sakit"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: height * 0.7,
                          child: TabBarView(
                            children: <Widget>[
                              Pilihan(),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
