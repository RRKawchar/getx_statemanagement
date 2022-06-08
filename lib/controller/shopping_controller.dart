import 'package:flutter_getx/model/shopping.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController{
  var shopping=<Shopping>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData()async{
   await Future.delayed(Duration(seconds: 1));
   var shopingList=[
    Shopping(
        id: 1,
        productName: "First Product",
        productImage: "ad",
        productDescription: "Some description about product ",
        price: 100
    ),
     Shopping(
        id: 2,
        productName: "Second Product",
        productImage: "ad",
        productDescription: "Some description about product ",
        price: 200
    ),
     Shopping(
        id: 3,
        productName: "Third Product",
        productImage: "ad",
        productDescription: "Some description about product ",
        price: 300
    ),
     Shopping(
         id: 4,
         productName: "Fourth Product",
         productImage: "abd",
         productDescription: "Some description about product ",
         price: 400
     ),


   ];
   shopping.value=shopingList;

  }
}