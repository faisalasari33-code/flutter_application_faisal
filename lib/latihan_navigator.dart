import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman_dua.dart';

class LatihanNavigator extends StatelessWidget {
  const LatihanNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = 'Faisal asari';
    final String alamat = 'Perum pondok Mangunreja';
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 1'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanDua(nama: nama, alamat: alamat),));
              },
              child: Text('Pergi Ke Halaman ke 2'))
        ]),
      ),
    );
  }
}
