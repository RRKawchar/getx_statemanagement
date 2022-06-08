

import 'package:flutter_getx/model/product.dart';
import 'package:http/http.dart'as http;
class RemoteService{

  Future<List<Product>?> fetchProduct()async{
    var response= await  http.put(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));
    if(response.statusCode==200){
      var jsonString= produtFromJson(response.body);
      return jsonString;
    }else{
      return null;
    }
  }
}