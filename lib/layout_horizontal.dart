import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Horizontal')),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal, //scroll ke samping
          children: <Widget>[
            Container(width: 160, color: Colors.deepPurple),
            Container(width: 160, color: Colors.brown),
            Container(width: 160, color: Colors.green),
            Container(width: 160, color: Colors.amberAccent),
            Container(width: 160, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
