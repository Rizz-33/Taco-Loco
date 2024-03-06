import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tacoloco/components/button.dart';
import 'package:tacoloco/components/foodTile.dart';
import 'package:tacoloco/food_data.dart';
import 'package:tacoloco/models/food.dart';
import 'package:tacoloco/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List<Food> foodMenu = [
    //item 1
    Food(name: 'Bacon, Egg, and Cheese\nBreakfast Taco', price: '45', imagePath: 'lib/images/Bacon, Egg, and ChEEse BrEakfast Taco.png', rating: '4.7'),

    //item 2
    Food(name: 'Bacon, Egg, and Cheese\nBreakfast Burrito', price: '45', imagePath: 'lib/images/Bacon, Egg, and Cheese Breakfast Burrito.png', rating: '4.7'),

    //item 3
    Food(name: 'Bacon, Potato, Egg and\nCheese Breakfast Taco', price: '45', imagePath: 'lib/images/BACON, POTATO, EGG & CHEESE BREAKFAST TACO.png', rating: '4.7'),
  ];

  void NavigateToFoodData(int index){
    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodData()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Icon(
          Icons.menu,
          color: primaryColor,
        ),
        title: Text(
          'Menu',
          style: TextStyle(color: primaryColor),
        ),
      ),
      body: ListView(
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/menuB.jpeg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            padding: const EdgeInsets.only(left:16, top: 25, bottom: 25,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //promo message
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Free Delivery on\nAll Orders',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    //redeem button
                    Button(
                      text: 'Redeem',
                      ontap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),

              ],
            ),
          ),

          const SizedBox(height: 10,),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: primaryColor.withOpacity(0.4),
                ),
                hintText: 'Search here',
                hintStyle: TextStyle(
                  color: primaryColor.withOpacity(0.4),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),

          const SizedBox(height: 25,),
          //menu items
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: 'Food',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  const TextSpan(
                    text: ' Menu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10,),

          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index], onTap: () {  },
              ),
            ),
          ),

          const SizedBox(height: 25,),
          //popular items

          Container(
            decoration: BoxDecoration(
              color: primaryColor.withAlpha((primaryColor.alpha * 0.9).round()),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //image
                    Image.asset(
                      'lib/images/taco-truck.png',
                      height: 60,
                    ),

                    const SizedBox(width: 20,),
                    //name + price
                    Column(
                      children: [
                        //name
                        Text(
                          'name',
                          style: GoogleFonts.aBeeZee(fontSize: 18, color: Colors.white),
                        ),

                        const SizedBox(height: 10,),
                        //price
                        const Text(
                          '\$29.00',
                          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ],
                ),

                //heart
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}