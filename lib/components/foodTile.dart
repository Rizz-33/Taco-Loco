import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tacoloco/models/food.dart';
import 'package:tacoloco/themes/colors.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
      },
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor.withAlpha((primaryColor.alpha * 0.09).round()),
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.only(left: 25,),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image
            Center(
              child: Image.asset(
                food.imagePath,
                height: 120,
              ),
            ),

            //text
            Text(
              food.name,
              style: GoogleFonts.aBeeZee(fontSize: 13),
            ),
            
            //price+ rating
            SizedBox(
              width: 105,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //price
                  Text('\$' + food.price, style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),),
                  //rating
                  Row(
                    children: [
                      const Icon(Icons.star, color: Color.fromARGB(255, 226, 204, 0),),
                      Text(food.rating, style: const TextStyle(color: Colors.black),),
                    ],
                  ),
                ]),
                
            )
          ]),
      ),

    );
  }
}