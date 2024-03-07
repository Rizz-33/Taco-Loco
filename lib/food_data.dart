import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

                const SizedBox(height: 10,),
            
                //food name
                Text(widget.food.name,
                style: GoogleFonts.aBeeZee(fontSize: 24)),

                const SizedBox(height: 25,),
            
                //description
                Text("Description",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),

                const SizedBox(height: 10,),

                Text("Tacos, a beloved staple of Mexican cuisine, are crafted from a folded or rolled tortilla generously filled with an array of savory ingredients like seasoned meats, beans, cheese, fresh vegetables, and zesty sauces, offering a flavorful culinary experience.",
                style: TextStyle(color: Colors.grey[600], fontSize: 14, height: 2),),
              ],
            ),
          ))


          //price + qiantity _ add to cart
        ],
      ),
    );
  }
}