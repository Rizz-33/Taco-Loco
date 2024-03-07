import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tacoloco/intro_page.dart';
import 'package:tacoloco/menu.dart';
import 'package:tacoloco/models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
      )
  );
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