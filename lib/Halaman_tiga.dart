import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 3'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.
            styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.greenAccent
              
            ),
            child: Text('kembali ke halaman sebelunya')),
      ),
    );
  }
}
