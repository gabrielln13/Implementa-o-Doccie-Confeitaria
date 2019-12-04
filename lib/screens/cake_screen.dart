import 'package:cs_doccie_confeitaria/tiles/product_tiles.dart';
import 'package:flutter/material.dart';

class CakeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Image.asset("images/logo-2.png"),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.grid_on),),
                Tab(icon: Icon(Icons.list),)
              ],
            ),
          ),
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                GridView(
                  padding: EdgeInsets.all(4.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    childAspectRatio: 0.65,
                  ),
                  children: <Widget>[
                    ProductTile("grid", "images/cake-chocolate.jpeg", "Cake de Chocolate", "25,00"),
                    ProductTile("grid", "images/cake-halloween.jpeg", "Cake Halloween", "15,00"),
                    ProductTile("grid", "images/cake-minnie.jpg", "Cake da Minnie", "15,00"),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.all(4.0),
                  children: <Widget>[
                    ProductTile("grid", "images/cake-chocolate.jpeg", "Cake de Chocolate", "25,00"),
                    ProductTile("grid", "images/cake-halloween.jpeg", "Cake Halloween", "15,00"),
                    ProductTile("grid", "images/cake-minnie.jpg", "Cake da Minnie", "15,00"),
                  ],
                )
              ]
          )
      ),
    );
  }
}
