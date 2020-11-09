import 'dart:ui';

import 'package:demo_ui/screens/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //String _selectedItem = ''; // BottomSheet
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        elevation: 15.0,
        toolbarHeight: 70.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Container(
              height: 300.0,
              width: 300.0,
              child: Hero(
                tag: 'dash',
                child: Image.asset(
                  'images/logo1.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: 260.0,
              height: 40.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff005C97), Color(0xff363795)],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              margin: EdgeInsets.only(top: 220.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                //color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'New User,  Register Now',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
