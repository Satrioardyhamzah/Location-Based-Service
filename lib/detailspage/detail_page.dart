import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/model.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/MenuItemCard.dart';

class DetailPage extends StatefulWidget {
  var index;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage("assets/eka1.jpeg"), fit: BoxFit.cover),
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 22,
                          width: 22,
                          child: Image.asset("assets/back.png")),
                    )
                  ],
                ),
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
                  Text(
                    "Lokasi Rumah Sakit Yang Dipilih",
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media-exp1.licdn.com/dms/image/C561BAQEfP0Iyp-v3IA/company-background_10000/0/1612180094279?e=2147483647&v=beta&t=KKUc5gXpQqyzTyFD_0sYWXl63RcmzUBQ6Tb5OnsqvKw"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Eka Hospital",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "RS Eka Cibubur adalah salah satu RS dibawah naungan Eka Hospital Group. Memiliki visi Menjadi Jaringan Penyedia Layanan Kesehatan Terdepan di Asia Pasifik. Dengan Misi Mengutamakan keselamatan dan kenyamanan pasien, Menerapkan standar layanan medis yang terbaik, Menyediakan layanan kesehatan terpadu, Melayani dengan tulus dan sepenuh hati serta Aktif mempromosikan hidup sehat.",
                    style: TextStyle(height: 1.6),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/eka2.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/ekahospital/eka.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/eka3.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/ekahospital/bed.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lokasi",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Jalan Raya Kota Wisata Kav. V2, Nagrak, Kec. Gn. Putri, Kabupaten Bogor, Jawa Barat 16967 ",
                    style: TextStyle(height: 1.3),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Cari Lokasi",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Klik Gambar Di Bawah Ini ",
                    style: TextStyle(height: 1.3),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 50,
                        width: 1000,
                        child: Image.asset("assets/location.png")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
