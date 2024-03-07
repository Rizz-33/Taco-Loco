import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tacoloco/components/button.dart';
import 'package:tacoloco/models/food.dart';
import 'package:tacoloco/models/shop.dart';
import 'package:tacoloco/themes/colors.dart';

class FoodData extends StatefulWidget {
  final Food food;
  FoodData({super.key, required this.food});

  @override
  State<FoodData> createState() => _FoodDataState();
}

class _FoodDataState extends State<FoodData> {
  //quantity
  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity(){
    setState(() {
      if (quantityCount>0) {
  quantityCount--;
}
    });
  }

  //increment quantity
  void incrementQuantity(){
    setState(() {
      quantityCount++;
    });
  }

  //add to cart
  void addtocart(){
    //only add to cart if there is something in the cart
    if (quantityCount>0){
      //get access to shop
      final shop = context.read<Shop>();

      //add to cart
      shop.addtocart(widget.food, quantityCount);

      //successful message
      showDialog(context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: Text("Successfully added to the cart.", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          actions: [
            IconButton(onPressed: (){

              //pop once to remove dialog box
              Navigator.pop(context);

              //pop again to got previous screen
              Navigator.pop(context);
            },
            icon: Icon(Icons.done))
          ],
      ),);
    }
  }

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
                    const Icon(Icons.star,color: Colors.amber,),
            
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
          ),),


          //price + qiantity _ add to cart
          Container(
            color: const Color.fromARGB(255, 221, 64, 64),
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                // price + quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  //price
                  Text("\$" + widget.food.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),

                  //quantity
                  Row(
                    children: [
                      //minus button
                      Container(
                        decoration: BoxDecoration(color: primaryColor, shape: BoxShape.circle),
                        child: IconButton(icon: const Icon(Icons.remove, color: Colors.white,),
                        onPressed: decrementQuantity,),
                      ),

                      //quantity count
                      SizedBox(width: 40, child: Center(child: Text(quantityCount.toString(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),

                      //plus button
                      Container(
                        decoration: BoxDecoration(color: primaryColor, shape: BoxShape.circle),
                        child: IconButton(icon: const Icon(Icons.add, color: Colors.white,),
                        onPressed: incrementQuantity,),
                      ),
                    ],
                  )


                ],),
                const SizedBox(height: 25,),

                //add to cart button
                Button(text: 'Add To Cart', ontap: addtocart)
              ],
            ),
          )
        ],
      ),
    );
  }
}