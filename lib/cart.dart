import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tacoloco/components/button.dart';
import 'package:tacoloco/models/food.dart';
import 'package:tacoloco/models/shop.dart';
import 'package:tacoloco/themes/colors.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});


  //remove from cart
  void removefromcart(){

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, value, child) => Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          //cart with items
          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index){
              //get food from cart
              final Food food = value.cart[index];
            
              //get food name
              final String foodName = food.name;
            
              //get food price
              final String foodPrice = food.price;
            
              //retuen list tile
              return Container(
                decoration: BoxDecoration(color: primaryColor.withAlpha((primaryColor.alpha * 0.09).round()),
                borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ListTile(
                  title: Text(foodName,
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(foodPrice,
                  style: TextStyle(color: Colors.grey[600]),),
                  trailing: IconButton(icon: Icon(Icons.delete, color: Colors.grey[500],), onPressed: removefromcart,),
                ),
              );
            }),
          ),

          //pay button
          Button(text: 'Pay Now', ontap: (){})
        ],
      ),
    ),);
  }
}