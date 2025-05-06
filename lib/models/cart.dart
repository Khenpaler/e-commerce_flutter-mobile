import 'package:flutter/foundation.dart';
import '../models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1 (Blue)',
      price: '100',
      imagePath: 'lib/images/blue.png',
      description: 'Blue Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1 (Green)',
      price: '100',
      imagePath: 'lib/images/green.png',
      description: 'Green Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1 (Pink)',
      price: '100',
      imagePath: 'lib/images/pink.png',
      description: 'Pink Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1 (White)',
      price: '100',
      imagePath: 'lib/images/white.png',
      description: 'White Air Force 1',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

