import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/onboarding/onboarding.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 30,
            top: size.height * 0.05,
            child: GestureDetector(
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
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.45),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    child: Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.licdn.com/dms/image/C4E03AQFId0IM8S76hw/profile-displayphoto-shrink_800_800/0/1657770018068?e=1687392000&v=beta&t=R1986ipWqrZpruHvzuWw_zrI-Ayhgrf7ykXlKWOOX-o"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Satrio Ardy Hamzah",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "55419926",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "4IA02",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Aplikasi Stay Health ini dibuat untuk memberikan kemudahan kepada pengguna seperti mencari Rumah Sakit, Klinik, Praktek Dokter dan Apotek di Cibubur. Aplikasi ini juga memudahkan pengguna jika terjadi darurat pada pengguna atau orang lain. Aplikasi ini sangat mudah untuk dipakai dan langsung terhubung ke Google Maps",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        height: 2, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
