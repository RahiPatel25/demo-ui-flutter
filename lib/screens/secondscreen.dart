import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Simple Text'),
            Text(
              'This is a overflow text. it will show ellipse at the end  when the text reaches at the end of the screen.',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            
            Text(
              'It is a strikethrough text',
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            Text(
              'It is a underline text',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
