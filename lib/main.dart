import 'package:exam_bootcamp/home_screen.dart';
import 'package:exam_bootcamp/page_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageOne(),
    );
  }
}
