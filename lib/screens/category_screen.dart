import 'package:cs_doccie_confeitaria/tiles/category_tiles.dart';
import 'package:flutter/material.dart';


class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/logo-2.png"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: <Widget>[
          CategoryTile("images/icon-bolo.png", "Bolos", 1),
          CategoryTile("images/icon-cake.png", "CupCakes", 2),
          CategoryTile("images/icon-doce.png", "Doces", 3),
        ],
      ),
    );
  }
}
