import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/model.dart';
import 'package:pelayanankesehatan/pagelist/pagelist3/detailpage.dart';
import '../../detailspage/detail_page.dart';

class MenuItemCard extends StatelessWidget {
  final int index;

  MenuItemCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetaillPage(
                                index: index,
                              )));
                },
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          menu[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              menu[index].name,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              menu[index].shortDesc,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w300),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetaillPage(
                              index: index,
                            )),
                  );
                },
                icon: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.lightBlue[600],
                  size: 36,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
