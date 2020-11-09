import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login UI',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        elevation: 15.0,
        titleSpacing: 20.0,
        toolbarHeight: 70.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            color: Colors.white,
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_alarm),
            color: Colors.white,
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        elevation: 4.0,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
