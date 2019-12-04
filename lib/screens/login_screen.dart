import 'package:cs_doccie_confeitaria/models/user_model.dart';
import 'package:cs_doccie_confeitaria/screens/product_screen.dart';
import 'package:cs_doccie_confeitaria/screens/signup_screen.dart';
import 'package:cs_doccie_confeitaria/widgets/form_container.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'category_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Doccie Confeitaria"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg-cake.jpg")
              )
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 60),
                          child: Image.asset("images/logo.png",
                              width: 200,
                              height: 250,
                              fit: BoxFit.contain),
                        ),
                        ScopedModelDescendant<UserModel>(
                          builder: (context, child, model){
                            if(model.isLoading)
                              return Center(child: CircularProgressIndicator(),);

                            return FormContainer();
                          },
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                              onPressed: (){},
                              child: Text("Esqueci minha senha",
                                textAlign: TextAlign.right,)
                          ),
                        ),
                        SizedBox(
                          height: 44.0,
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => CategoryScreen())
                              );
                            },
                            child: Text("Entrar",
                              style: TextStyle(
                                fontSize: 18,

                              ),
                            ),
                            textColor: Colors.white,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        SizedBox(
                          height: 44.0,
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => SignUpScreen())
                              );
                            },
                            child: Text("Cadastrar",
                              style: TextStyle(
                                fontSize: 18,

                              ),
                            ),
                            textColor: Colors.white,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
