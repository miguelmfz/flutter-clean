import 'package:flutter/foundation.dart';

class CartCount with ChangeNotifier {
  int _cartCount = 0;

  int get cartCountValue => _cartCount;

  incrementCartCount() {
    this._cartCount++;
    notifyListeners();
  }

  resetCartCount() {
    this._cartCount = 0;
    notifyListeners();
  }
}
