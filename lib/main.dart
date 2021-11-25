import 'package:flutter/material.dart';
//import 'screens/login2.dart';
import 'screens/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prática 03",
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginScreen()
    );
  }
}