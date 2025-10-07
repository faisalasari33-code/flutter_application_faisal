import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile_tugas.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "applikasi flutter",
      home: ProfileTugas(),
    );
  }
}
