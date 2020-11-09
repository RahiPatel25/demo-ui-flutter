import 'package:flutter/material.dart';

class InputWidgets extends StatefulWidget {
  @override
  _InputWidgetsState createState() => _InputWidgetsState();
}

class _InputWidgetsState extends State<InputWidgets> {
  int _groupValue = 0;
  bool _checkBoxValue = false;
  bool _switchValue = false;
  RangeValues _values = RangeValues(50, 80);
  double _value = 0.0;
  int _step = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Radio",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: _groupValue,
                    value: 0,
                    onChanged: (t) {
                      setState(() {
                        _groupValue = t;
                      });
                    },
                  ),
                  Text("Male")
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: _groupValue,
                    value: 1,
                    onChanged: (t) {
                      setState(() {
                        _groupValue = t;
                      });
                    },
                  ),
                  Text("Female")
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Text("Checkbox", style: Theme.of(context).textTheme.headline5),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (t) {
                  setState(() {
                    _checkBoxValue = t;
                  });
                },
                value: _checkBoxValue,
              ),
              Text("MEMORY")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Switch", style: Theme.of(context).textTheme.headline5),
          ),
          Row(
            children: <Widget>[
              Switch(
                onChanged: (t) {
                  setState(() {
                    _switchValue = t;
                  });
                },
                value: _switchValue,
              ),
              Text("multipart")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Text("TextField", style: Theme.of(context).textTheme.headline5),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "with Border",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Range Slider",
                style: Theme.of(context).textTheme.headline5),
          ),
          SizedBox(height: 10.0),
          RangeSlider(
            onChanged: (RangeValues t) {
              setState(() {
                _values = t;
              });
            },
            values: _values,
            min: 0.0,
            max: 100.0,
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Slider", style: Theme.of(context).textTheme.headline5),
          ),
          Slider(
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            min: 0,
            max: 100,
            value: _value,
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Text("Steeper", style: Theme.of(context).textTheme.headline5),
          ),
          Container(
            height: 400.0,
            child: Stepper(
              onStepContinue: () {
                setState(() {
                  if (_step >= 0) if (_step < 2) _step++;
                });
              },
              onStepCancel: () {
                setState(() {
                  if (_step > 0) _step--;
                });
              },
              currentStep: _step,
              type: StepperType.horizontal,
              steps: [
                Step(
                    content: Text("Some Content"),
                    title: Text("Page 1"),
                    isActive: _step == 0 ? true : false),
                Step(
                    content: Text("Some Content"),
                    title: Text("Page 2"),
                    state: _step == 2 ? StepState.editing : StepState.complete,
                    isActive: _step == 1 ? true : false),
                Step(
                    content: Text("Some Content"),
                    title: Text("Page 3"),
                    isActive: _step == 2 ? true : false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
