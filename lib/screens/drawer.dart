import 'package:demo_ui/screens/appbar.dart';
import 'package:demo_ui/screens/progress.dart';
import 'package:demo_ui/screens/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:demo_ui/screens/firstscreen.dart';
import 'package:demo_ui/screens/buttons_screen.dart';
import 'package:demo_ui/screens/inputs.dart';
import 'package:demo_ui/screens/bottom_navigationbar.dart';
import 'package:demo_ui/screens/tabbar.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  SafeArea(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/IMG_eddited1.jpg'),
                    ),
                  ),
                  Text(
                    'Rahi Patel',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'rahi34499@gmail.com',
                    style: TextStyle(
                      //fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.menu),
            title: Text(
              'Appbar',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Appbar()));
            },
          ),
          ListTile(
            leading: Icon(Icons.text_fields),
            title: Text(
              'Text',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondscreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.radio_button_on_rounded),
            title: Text(
              'Buttons',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ButtonScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text(
              'Inputs',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputWidgets()));
            },
          ),
          ListTile(
            leading: Icon(Icons.watch_later_outlined),
            title: Text(
              'Progress',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProgressPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_downward),
            title: Text(
              'Bottom Navigation',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_circle_up),
            title: Text(
              'Tab Bar',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TabBarScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.layers_outlined),
            title: Text(
              'Layouts',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Firstscreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
