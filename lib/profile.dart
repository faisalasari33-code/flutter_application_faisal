import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'PROFILE DATA',
            style: TextStyle(color: Colors.teal),
          ),
          backgroundColor: Colors.greenAccent),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/fto.jpg'),
          ),
        
          Text(
            'PROFILE SAYA ',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          Text(
            'Nama : Faisal Asari',
            style: TextStyle(fontSize: 25, color: Colors.greenAccent),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Kelas : XI RPL 2',
            style: TextStyle(fontSize: 25, color: Colors.black87),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Column(
                children: [Icon(Icons.call), Text('call')],
              ),
              Column(
                children: [Icon(Icons.map), Text('map')],
              ),
              Column(
                children: [Icon(Icons.share), Text('share')],
              )
            ],
          )
        ],
      ),
    );
  }
}
