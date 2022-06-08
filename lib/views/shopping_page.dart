import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/cart_controller.dart';
import 'package:flutter_getx/controller/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final ShoppingController sController = Get.put(ShoppingController());
  final CartController cartController=Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                  builder: (controller) {
                return ListView.builder(
                    itemCount: controller.shopping.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(16),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(controller.shopping[index].productName),
                                      Text(controller.shopping[index].productDescription),

                                    ],
                                  ),
                                  Text('\$${controller.shopping[index].price}'),

                                ],
                              ),
                              RaisedButton(
                                onPressed: (){
                               cartController.addToCart(controller.shopping[index]);
                                },
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Text("Add to Cart"),

                              )
                            ],
                          ),
                        ),
                      );
                    });
              }),
            ),
            const SizedBox(
              height: 80,
            ),
            GetX<CartController>(
              builder: (controller) {
                return Text("Total Amount: \$ ${controller.totalPrice}");
              }
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrange,
            onPressed: (){

            },
            icon: Icon(Icons.shopping_cart,color: Colors.black,),
            label: GetX<CartController>(
              builder: (controller) {
                return Text("${controller.count}");
              }
            )
        ),
      ),
    );
  }
}
