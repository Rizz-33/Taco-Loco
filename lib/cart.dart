import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tacoloco/models/food.dart';
import 'package:tacoloco/models/shop.dart';
import 'package:tacoloco/themes/colors.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, value, child) => Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: value.cart.length,
        itemBuilder: (context, index){
        //get food from cart
        final Food food = value.cart[index];

        //get food name
        final String foodName = food.name;

        //get food price
        final String foodPrice = food.price;

        //retuen list tile
        return ListTile(
          title: Text(foodName),
          subtitle: Text(foodPrice),
        );
      }),
    ),);
  }
}