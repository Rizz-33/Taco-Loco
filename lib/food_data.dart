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
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                //image
                Image.asset(widget.food.imagePath,
                height: 200,),
            
                const SizedBox(height: 20,),
            
                //rating
                Row(
                  children: [
                    //star
                    Icon(Icons.star,color: Colors.amber,),
            
                    const SizedBox(width: 10,),
            
                    //rating number
                    Text(widget.food.rating,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),)
            
                  ],
                ),
            
                //food name
            
            
                //description
              ],
            ),
          ))


          //price + qiantity _ add to cart
        ],
      ),
    );
  }
}