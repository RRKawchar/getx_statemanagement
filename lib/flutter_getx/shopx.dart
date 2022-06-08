import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/product_controller.dart';
import 'package:flutter_getx/views/product_tile.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class ShopX extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: const Icon(Icons.arrow_back,color: Colors.black,),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart,color: Colors.black,))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    "ShopX",
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.view_list_rounded)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.grid_view))
                ],
              ),
            ),
           Expanded(
             child: Obx((){
               if(productController.isLoading.value){
                 return const Center(
                   child: CircularProgressIndicator(),
                 );
               }else{
                 return StaggeredGridView.countBuilder(
                     itemCount: productController.productList.length,
                     crossAxisCount: 2,
                     mainAxisSpacing: 16,
                     crossAxisSpacing: 16,
                     itemBuilder: (context,index){
                       return ProductTile(productController.productList[index]);
                     },
                     staggeredTileBuilder:(index)=> StaggeredTile.fit(1)
                 );
               }

             }),
           )
          ],
        ));
  }
}
