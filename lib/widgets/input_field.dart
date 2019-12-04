import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData icon;

  InputField({this.hint, this.obscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.black,
                  width: 2
              )
          )
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextFormField(
                obscureText: obscure,
                style: TextStyle(
                    color: Colors.black
                ),
                decoration: InputDecoration(
                    icon: Icon(
                      icon,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),
                    contentPadding: EdgeInsets.only(
                        top: 5,
                        right: 30,
                        bottom: 30,
                        left: 5
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}