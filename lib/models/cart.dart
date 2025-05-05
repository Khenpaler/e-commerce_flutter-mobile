import 'package:flutter/foundation.dart';
import '../models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1 (White)',
      price: '100',
      imagePath: 'assets/images/white.avif',
      description: 'White Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1 (Black)',
      price: '100',
      imagePath: 'assets/images/black.avif',
      description: 'Black Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1 (Pink)',
      price: '100',
      imagePath: 'assets/images/pink.png',
      description: 'Pink Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1 (Black and White)',
      price: '100',
      imagePath: 'assets/images/black_white.png',
      description: 'Black and White Air Force 1',
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

