

import 'package:tacoloco/models/food.dart';

class Shop {

  List<Food> _foodMenu = [
    //item 1
    Food(name: 'Bacon, Egg, and Cheese\nBreakfast Taco', price: '45', imagePath: 'lib/images/Bacon, Egg, and ChEEse BrEakfast Taco.png', rating: '4.7'),

    //item 2
    Food(name: 'Bacon, Egg, and Cheese\nBreakfast Burrito', price: '45', imagePath: 'lib/images/Bacon, Egg, and Cheese Breakfast Burrito.png', rating: '4.7'),

    //item 3
    Food(name: 'Bacon, Potato, Egg and\nCheese Breakfast Taco', price: '45', imagePath: 'lib/images/BACON, POTATO, EGG & CHEESE BREAKFAST TACO.png', rating: '4.7'),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addtocart(Food foodItem, int quantity){
    for (int i = 0; 1< quantity; i++) {
      _cart.add(foodItem);
    }
  }


  //remove from cart

}