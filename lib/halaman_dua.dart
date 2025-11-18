import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_tiga.dart';

class HalamanDua extends StatelessWidget {
  final String nama;
  final String alamat;
  const HalamanDua({super.key,required this.nama, required this.alamat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hallo: $nama!"),
            SizedBox(height: 20),
            Text("Alamat: $alamat"),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali ke Halaman sebelumnya')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanTiga()));
                },
                child: Text('Pergi ke halaman ke 3'))
          ],
        ),
      ),
    );
  }
}
