import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart_model.dart';
import 'package:flutter_application_1/model/product_model.dart';

class ClassProvider with ChangeNotifier {
  // private list _carts to store cart items , each represented by a cartmodel
  List<CartModel> _carts = [];
  // getter for _carts to access the list of cart items.
  List<CartModel> get carts => _carts;
  // setter for _carts , updates the cart list and notifer listeners when it changes.
  set carts(List<CartModel> carts) {
    _carts = carts;
    // notifies any wigets listening to this provider to rebuild.
    notifyListeners();
  }

  // adds a product to the cart
  addCart(MyProductModel productModel) {
    if (productExist(productModel)) {
      int index =
          _carts.indexWhere((element) => element.productModel == productModel);
      // incress
      _carts[index].quantity = _carts[index].quantity + 1;
    } else {
      _carts.add(CartModel(productModel: productModel, quantity: 1));
    }
    notifyListeners();
  }

  addQuantity(MyProductModel product) {
    int index = _carts.indexWhere((element) => element.productModel == product);
    _carts[index].quantity = _carts[index].quantity + 1;
    notifyListeners();
  }

  // decrees
  recucQuantity(MyProductModel product) {
    int index = _carts.indexWhere((element) => element.productModel == product);
    // decreess
    _carts[index].quantity = _carts[index].quantity - 1;
    notifyListeners();
  }

  //
  productExist(MyProductModel myproduct) {
    if (_carts.indexWhere((element) => element.productModel == myproduct) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }

  // total items cart
  double totalCart() {
    double total = 0;
    for (var i = 0; i < _carts.length; i++) {
      total = total + _carts[i].quantity * _carts[i].productModel.price;
    }
    return total;
  }
}
