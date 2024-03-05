import 'package:flutter/material.dart';
import 'package:tacoloco/intro_page.dart';
import 'package:tacoloco/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intro': (context) => const IntroPage(),
        '/menu': (context) => const MenuPage(),},
    );
  }
}