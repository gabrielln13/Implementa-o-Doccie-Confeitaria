import 'package:cs_doccie_confeitaria/screens/bolo_screen.dart';
import 'package:cs_doccie_confeitaria/screens/cake_screen.dart';
import 'package:cs_doccie_confeitaria/screens/doce_screen.dart';
import 'package:flutter/material.dart';


class CategoryTile extends StatelessWidget {

  final String imagem;
  final String titulo;
  final int id;

  CategoryTile(this.imagem, this.titulo, this.id);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(imagem),
      ),
      title: Text(titulo),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        if(id == 1){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BoloScreen())
          );
        }
        if(id == 2){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CakeScreen())
          );
        }
        if(id == 3){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DoceScreen())
          );
        }
      },
    );
  }
}
