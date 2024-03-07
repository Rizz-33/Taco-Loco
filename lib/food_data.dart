import 'package:flutter/material.dart';
import 'package:tacoloco/models/food.dart';

class FoodData extends StatefulWidget {
  final Food food;
  FoodData({super.key, required this.food});

  @override
  State<FoodData> createState() => _FoodDataState();
}

class _FoodDataState extends State<FoodData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      )
      
    );
  }
}