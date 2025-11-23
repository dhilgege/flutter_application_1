import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart'; 
import 'package:flutter_application_1/profilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ShopeeHomePage(), // ← ini class yang ada di home.dart kamu
    );
  }
}
