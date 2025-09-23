import 'package:flutter/material.dart';

class Campuran extends StatelessWidget {
  const Campuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list dan gridview'),
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
            leading: Icon(Icons.view_agenda_rounded),
            title: Text('Road'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('View'),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Map:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 10),
                Image.asset('aset/petalabubu.png' , width: 150, fit : BoxFit.cover),
              ],
            ),
          ),


          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Road:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget> [
                SizedBox(width: 10),
                Image.asset('aset/labubu1.png', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/labubu2.png', width: 150, fit : BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/labubu3.png', width: 150, fit : BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/labubu4.png', width: 150, fit : BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/labubu5.png', width: 150, fit : BoxFit.cover),
              ],
            ),
          ),

           Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'View:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget> [
                SizedBox(width: 10),
                Image.asset('aset/naruto.png', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/naruto2.png', width: 150, fit : BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/naruto3.png', width: 150, fit : BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/sasuke.png', width: 150, fit : BoxFit.cover),
                SizedBox(width: 10),
                Image.asset('aset/naruto.png', width: 150, fit : BoxFit.cover),
              ],
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