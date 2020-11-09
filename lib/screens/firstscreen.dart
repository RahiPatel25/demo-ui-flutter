import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  String _selectedItem = ''; // BottomSheet
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: EdgeInsets.only(
                top: 70.0, right: 20.0, left: 20.0, bottom: 30.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text('Search pet to adopt'),
                Icon(Icons.settings)
              ],
            ),
          ),
          RaisedButton(
            child: Text('BottomSheet'),
            color: Colors.white,
            onPressed: () => _onButtonPressed(),
          ),
          Text(
            _selectedItem,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  //******** BOTTOM SHEET ************
  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              child: _buildBottomNavigationMenu(),
              height: 280.0,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0),
                ),
              ),
            ),
          );
        });
  }

  void selectedItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Hello World'),
          onTap: () => selectedItem('Hello World'),
        ),
      ],
    );
  }
//******** BOTTOM SHEET ************
}
