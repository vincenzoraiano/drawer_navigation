import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './main_drawer.dart';

void main() => runApp(MiaApp());

class MiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lobster'),
      home: DrawerENavigation(),
      //drawer:Drawer(),
    );
  }
}

class DrawerENavigation extends StatefulWidget {
  @override
  _DrawerENavigationState createState() => _DrawerENavigationState();
}

class _DrawerENavigationState extends State<DrawerENavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: main_drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffFFA000),
        centerTitle: true,
        title: Text(
          'Drawee e navigation',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      backgroundColor: Color(0xffFFC107),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Text(
                  'Benvenuto nel login',
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Utente",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Divider(
                height: 90.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'image/facebook.png',
                      scale: 5,
                    ),
                    Image.asset(
                      'image/twitter.png',
                      scale: 5,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
