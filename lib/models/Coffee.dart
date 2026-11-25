import 'package:flutter/material.dart';

class Coffee {
  final String name;
  final String price;
  final String imagePath;


  Coffee({ required this.name , required this.price , required this.imagePath});
  
}


class CoffeeShop{

  final List<Coffee> _shop = [
    Coffee(name: "Black Coffee", price: "70", imagePath: "lib/images/blackcoffee.jpg"),
    Coffee(name: "Cappuccino Coffee", price: "120", imagePath: "lib/images/cappuccinocoffee.jpg"),
    Coffee(name: "Espresso Coffee", price: "120", imagePath: "lib/images/espressocoffeecoffee.jpg"),
    Coffee(name: "Latte Coffee", price: "100", imagePath: "lib/images/lattecoffee.jpg"),
  ];

  List<Coffee> _userCart = [];


  List<Coffee> get coffeeShop  => _shop; 

  List<Coffee> get cart => _userCart;


  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
  }

  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
  }

}