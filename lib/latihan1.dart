import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Latihan 1", style: TextStyle(
          fontFamily: 'title',
          fontSize: 25,
          color: const Color.fromARGB(255, 243, 216, 216),
        ),
        ),
        backgroundColor:  Color.fromARGB(255, 103, 136, 207),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
          Center(
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: const Color.fromARGB(255, 0, 87, 218), width: 3),
                ),
                child: ClipOval(
                  child: Image.asset('aset/abi.png', fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text('Faisal asari',
                  style: TextStyle(
                    fontFamily: 'font1',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text('smk ypc tasikmalaya',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 5),
                Text('jurusan rpl',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 5),
                Text('siswa kelas 11 rpl 2',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                ),   
                ),
                SizedBox(height: 5),
                Text('umur : 16 tahun',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  ),
                 ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.map),
                  label: Text('ROUTE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 103, 136, 207),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  label: Text('Call'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 103, 136, 207),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}