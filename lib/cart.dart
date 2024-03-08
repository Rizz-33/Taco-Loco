import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      body: ListView.builder(itemBuilder: (context, index){
        //get food from cart

        //get food name

        //get food price

        //retuen list tile
      }),
    ),);
  }
}