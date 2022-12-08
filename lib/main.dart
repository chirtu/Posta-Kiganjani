/*
* Developed by Fatuma chitu,
* https://github.com/chirtu
* email. chitufatuma45@gmail.com
* */
import 'package:chituposta/screens/mainscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:mainscreen()
    );
  }
}
