import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetaillPage extends StatefulWidget {
  final int index;
  DetaillPage({Key? key, required this.index}) : super(key: key);
  @override
  State<DetaillPage> createState() => _DetaillPageState();
}

class _DetaillPageState extends State<DetaillPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      } else {
        throw(url);
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(menu[widget.index].image),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.9),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.5),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      menu[widget.index].name,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      width: width,
                      child: ListView.builder(
                        itemCount: menu[widget.index].rate,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int key) {
                          return Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 34,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      menu[widget.index].desc,
                      textAlign: TextAlign.justify,
                    
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {
                                launchUrl(menu[widget.index].url_launcher);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromARGB(255, 7, 237, 241),
                              padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                              child: Text(
                                "Maps",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        RaisedButton(
                          onPressed: () {
                            launchUrl(menu[widget.index].url_launcher1);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color.fromARGB(255, 7, 237, 241),
                          padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                          child: Text(
                            "No Telfon",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: height * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 42,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
