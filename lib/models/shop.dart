

import 'package:flutter/material.dart';
import 'package:tacoloco/models/food.dart';

class Shop extends ChangeNotifier{

  List<Food> _foodMenu = [
    //item 1
    Food(name: 'Bacon, Egg, and Cheese\nBreakfast Taco', price: '45', imagePath: 'lib/images/Bacon, Egg, and ChEEse BrEakfast Taco.png', rating: '4.9'),

    //item 2
    Food(name: 'Bacon, Egg, and Cheese\nBreakfast Burrito', price: '45', imagePath: 'lib/images/Bacon, Egg, and Cheese Breakfast Burrito.png', rating: '4.4'),

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
    for (int i = 0; i< quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }


  //remove from cart
  void removefromcart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }

}