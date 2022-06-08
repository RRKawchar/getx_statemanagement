import 'package:flutter/material.dart';
import 'package:flutter_getx/practice/cart_controller.dart';
import 'package:flutter_getx/practice/controller.dart';
import 'package:get/get.dart';

class ShoppingPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: ColumnBuil(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrange,
          onPressed: () {},
          label: GetX<CartController>(builder: (controller) {
            return Text("${controller.count} ");
          }),
          icon: const Icon(
            Icons.add_shopping_cart,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

Widget ColumnBuil() {
  final product = Get.put(PracticeController());
  final cartPrice = Get.put(CartController());
  return Column(
    children: [
      Expanded(
        child: GetX<PracticeController>(builder: (controller) {
          return ListView.builder(
              itemCount: controller.model.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                txtWidget("${controller.model[index].id}", 30.0, Colors.black, FontWeight.bold),
                                txtWidget(controller.model[index].productName, 30.0, Colors.black, FontWeight.bold),
                                txtWidget(controller.model[index].productDescription, 15.0, Colors.black, FontWeight.bold),
                              ],
                            ),
                            txtWidget("\$ ${controller.model[index].price}", 30.0, Colors.indigo, FontWeight.bold),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              cartPrice.addToCart(controller.model[index]);
                            },
                            child: txtWidget("Add To Cart", 20.0, Colors.white, FontWeight.bold)),
                      ],
                    ),
                  ),
                );
              });
        }),
      ),
      GetX<CartController>(builder: (controller) {
        return txtWidget("Total Amount :${controller.totalPrice}", 20.0, Colors.white, FontWeight.bold);
      })
    ],
  );
}

Widget txtWidget(
  String txt,
  double size,
  Color color,
  FontWeight fontWeight,
) {
  return Text(
    txt,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
