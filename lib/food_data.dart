import 'package:flutter/material.dart';
import 'package:tacoloco/models/food.dart';
import 'package:tacoloco/themes/colors.dart';

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
        foregroundColor: primaryColor,
      ),
      body: Column(
        children: [
          //list view
          Expanded(child: ListView(
            children: [
              //image
              Image.asset(widget.food.imagePath,
              height: 200,)

              //rating


              //food name


              //description
            ],
          ))


          //price + qiantity _ add to cart
        ],
      ),
    );
  }
}