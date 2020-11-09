import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  var toggleValues = [true, false, false];
  var dropDownValue = 1;
  var dropDownValue1 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 0.7,
          crossAxisCount: 2,
        ),
        children: <Widget>[
          ButtonWidget(
            name: "Material Button",
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.pink,
              child: Text(
                "BUTTON",
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
          ButtonWidget(
            name: "Raw Material Button",
            child: RawMaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.deepOrange,
              child: Text(
                "BUTTON",
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
          ButtonWidget(
            name: "Flat Button",
            child: FlatButton(
              onPressed: () {},
              color: Colors.white,
              child: Text(
                "BUTTON",
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.purple,
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
          ButtonWidget(
            name: "Outline Button",
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: Colors.pink,
              ),
              child: Text(
                "BUTTON",
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.pink,
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
          ButtonWidget(
            name: "Raised Button",
            child: RaisedButton(
              onPressed: () {},
              color: Colors.green,
              child: Text(
                "BUTTON",
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
              ),
            ),
          ),
          ButtonWidget(
            name: "Icon Buton",
            child: IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.access_alarm),
            ),
          ),
          ButtonWidget(
            name: "Toogle Buttons",
            child: ToggleButtons(
              onPressed: (t) {
                setState(() {
                  toggleValues[t] = !toggleValues[t];
                });
              },
              isSelected: toggleValues,
              children: <Widget>[
                Icon(Icons.account_balance),
                Icon(Icons.work_outlined),
                Icon(Icons.account_circle_rounded),
              ],
            ),
          ),
          ButtonWidget(
            name: 'PopupMenu Buttons',
            child: PopupMenuButton(
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text('One'),
                ),
                PopupMenuItem(
                  child: Text('Two'),
                ),
                PopupMenuItem(
                  child: Text('Three'),
                ),
                PopupMenuItem(
                  child: Text('Four'),
                ),
              ],
            ),
          ),
          ButtonWidget(
            name: "Dropdown Buttons",
            child: DropdownButton(
              onChanged: (t) {
                setState(() {
                  dropDownValue = t;
                });
              },
              value: dropDownValue,
              items: [
                DropdownMenuItem(
                  child: Text('Test 1'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Test 2'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Test 3'),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text('Test 4'),
                  value: 4,
                ),
              ],
            ),
          ),
          ButtonWidget(
            name: "Without Underline Dropdown Buttons",
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                onChanged: (t) {
                  setState(() {
                    dropDownValue1 = t;
                  });
                },
                value: dropDownValue1,
                items: [
                  DropdownMenuItem(
                    child: Text('Test 1'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Test 2'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Test 3'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Test 4'),
                    value: 4,
                  ),
                ],
              ),
            ),
          ),
          ButtonWidget(
            name: "Floating Action Button",
            child: FloatingActionButton(
              onPressed: () {},
              heroTag: UniqueKey(),
              key: UniqueKey(),
              child: Icon(Icons.add),
            ),
          ),
          ButtonWidget(
            name: 'Floating Actoin Button Extended',
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text('BACK'),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String name;
  final Widget child;

  ButtonWidget({this.name, this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              name,
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          child,
        ],
      ),
      elevation: 35.0,
    );
  }
}
