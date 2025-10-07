import 'package:flutter/material.dart';

class ProfileTugas extends StatelessWidget {
  const ProfileTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'profil saya',
          style: TextStyle(
              fontFamily: 'title',
              fontSize: 25,
              color: const Color.fromARGB(255, 181, 199, 230)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('aset/abi.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Text(
                  'Nama: Faisal asari',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'body',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Umur : 15',
                  style: TextStyle(fontSize: 20, fontFamily: 'body'),
                ),
                SizedBox(height: 20),
                Text(
                  'alamat: Mangunreja',
                  style: TextStyle(fontSize: 20, fontFamily: 'body'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
