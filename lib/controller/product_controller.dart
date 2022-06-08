


import 'package:flutter_getx/service/remote_service.dart';
import 'package:get/state_manager.dart';

import '../model/product.dart';

class ProductController extends GetxController{
  var isLoading=true.obs;
var productList=<Product>[].obs;
var count=0.obs;

@override
  void onInit() {
    // TODO: implement onInit
  fetchData();

    super.onInit();
  }

 void increment(){
  count++;
  print(count);
  }

void fetchData()async{
 var product=RemoteService().fetchProduct();
 if(product !=null){
   productList.value=product as List<Product>;
 }
}

}