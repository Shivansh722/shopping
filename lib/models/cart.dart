import 'package:flutter/material.dart';
import 'package:shopit/models/item.dart';
import 'package:shopit/pages/shop_page.dart';

class Cart extends ChangeNotifier {
  //list of items
  List<Item>itemItem=[
    Item(
      name: 'Milk',
      price: 234,
      description: 'Good for health!',
      imagePath: 'lib/images/milk.png'
    ),
    Item(
      name: 'Nuts',
      price: 541,
      description: 'Good for health!',
      imagePath: 'lib/images/nuts.png'
    ),
  ];
  //list of items in the user cart
  List<Item> userCart = [];

  //list of items for sales
  List<Item> getItemList() {
    return  itemItem;
  }

  List<Item> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItem(Item item) {
    userCart.add(item);
    notifyListeners();
  }
  //remove item 
  void removeItem(Item item) {
    userCart.remove(item);
    notifyListeners();
  }
}