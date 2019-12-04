import 'package:cs_doccie_confeitaria/datas/product_data.dart';
import 'package:cs_doccie_confeitaria/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String type;
  final String img_principal;
  final String product_title;
  final String product_preco;

  ProductTile(this.type, this.img_principal, this.product_title, this.product_preco);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){/*
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>ProductScreen(product))
        );*/
      },
      child: Card(
        child: type == "grid"
            ? Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(img_principal),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      product_title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "R\$" + product_preco,
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        )
            : Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Image.asset(img_principal, height: 250.0,)
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product_title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "R\$" + product_preco,
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
