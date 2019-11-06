import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Container(color: Colors.green,),
        Container(color: Colors.greenAccent,),
      ],
    );
  }
}

