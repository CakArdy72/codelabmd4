import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/speech_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pengenalan Suara',
      home: SpeechScreen(),
    );
  }
}