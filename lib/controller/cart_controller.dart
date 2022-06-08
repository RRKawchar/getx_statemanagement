
import 'package:flutter_getx/model/shopping.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  var cartItem=<Shopping>[].obs;

  double get totalPrice=>cartItem.fold(0, (sum,item) =>sum+item.price);
  int get count=>cartItem.length;
  addToCart(Shopping shopping)async{
    cartItem.add(shopping);
  }
}