import 'package:flutter/material.dart';

class Campuran extends StatelessWidget {
  const Campuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list daan gridview'),
        backgroundColor: const Color.fromARGB(255, 0, 162, 255),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Menu Aplikasi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Warna Horizotal:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 10),
                Image.asset('images/1.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('images/2.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('images/3.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('images/4.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('iamges/5.jpg', width: 150, fit: BoxFit.cover),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Grid Item:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(20, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(fontSize: 20),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
