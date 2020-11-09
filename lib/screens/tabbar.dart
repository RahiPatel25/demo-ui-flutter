import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.work_rounded)),
                Tab(icon: Icon(Icons.add_alarm)),
                Tab(icon: Icon(Icons.sort_by_alpha)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.work_rounded),
              Icon(Icons.add_alarm),
              Icon(Icons.sort_by_alpha),
            ],
          ),
        ),
      ),
    );
  }
}