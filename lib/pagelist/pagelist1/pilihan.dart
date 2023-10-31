import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/MenuItemCard.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/model.dart';

class Pilihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: menu.length,
      itemBuilder: (context, int key) {
        return MenuItemCard(index: key);
      },
    ));
  }
}
