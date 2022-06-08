import 'package:flutter_getx/practice/model.dart';
import 'package:get/get.dart';

class PracticeController extends GetxController{
  var model=<Model>[].obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }


  void fetchData()async{
    var productList=[
      Model(
          id: 1,
          productName: "First Product",
          productDescription: "some description about product",
          productImage: "abd",
          price: 100.0
      ),
      Model(
          id: 2,
          productName: "Second Product",
          productDescription: "some description about product",
          productImage: "abd",
          price: 200.0
      ),
      Model(
          id: 3,
          productName: "Third Product",
          productDescription: "some description about product",
          productImage: "abd",
          price: 300.0
      ),
      Model(
          id: 4,
          productName: "Fourth Product",
          productDescription: "some description about product",
          productImage: "abd",
          price: 400.0
      ),
      Model(
          id: 5,
          productName: "Fifth Product",
          productDescription: "some description about product",
          productImage: "abd",
          price: 500.0
      ),
      Model(
          id: 6,
          productName: "Sixth Product",
          productDescription: "some description about product",
          productImage: "abd",
          price: 600.0
      ),

    ];
    model.value=productList;
  }

}