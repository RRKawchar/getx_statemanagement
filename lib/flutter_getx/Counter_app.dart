import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/product_controller.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final ProductController productController=Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: ContainerWidget(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        productController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
Widget ContainerWidget(BuildContext context){

  double _width=MediaQuery.of(context).size.width;
  double _height=MediaQuery.of(context).size.height;

  final ProductController productController=Get.put(ProductController());
  return SizedBox(
    height: _height,
    width: _width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       txtWidget("Counter Here", 36.0, FontWeight.bold,Colors.green),
        Obx((){
          return txtWidget("${productController.count}", 40.0, FontWeight.w600, Colors.red);
        })

      ],
    ),
  );
}
Widget txtWidget(String txt,double size,FontWeight fontWeight,Color color){
  return Text(
    txt,style: TextStyle(
    fontSize: size,
    fontWeight: fontWeight,
    color: color
  ),
  );
}

