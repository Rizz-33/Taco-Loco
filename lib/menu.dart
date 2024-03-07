import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tacoloco/components/button.dart';
import 'package:tacoloco/components/foodTile.dart';
import 'package:tacoloco/food_data.dart';
import 'package:tacoloco/models/shop.dart';
import 'package:tacoloco/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void NavigateToFoodData(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodData(
                  food: foodMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

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
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('lib/images/menuB.jpeg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            padding: const EdgeInsets.only(left: 16, top: 25, bottom: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Free Delivery on\nAll Orders',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                    const SizedBox(height: 20),
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
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),
          const SizedBox(height: 25,),
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
                food: foodMenu[index],
                onTap: () => NavigateToFoodData(index),
              ),
            ),
          ),
          const SizedBox(height: 25,),
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
                    Image.asset(
                      'lib/images/taco-truck.png',
                      height: 60,
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      children: [
                        Text(
                          foodMenu[0].name, // Replace with actual food item name
                          style: GoogleFonts.aBeeZee(fontSize: 14, color: Colors.white),
                        ),
                        const SizedBox(height: 10,),
                        const Text('\$29.00',
                          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ],
                ),
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
