import 'package:flutter_getx/practice/model.dart';
import 'package:get/get.dart';

class CartController extends GetxController{

  var cartList=<Model>[].obs;

  double get totalPrice=>cartList.fold(0, (sum, item) => sum+item.price);
  int get count=>cartList.length;

  addToCart(Model _model)async{
    cartList.add(_model);
  }
}