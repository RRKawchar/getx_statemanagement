import 'package:flutter/material.dart';
import 'package:flutter_getx/practice/shopping_practice.dart';
import 'package:flutter_getx/views/languages.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      debugShowCheckedModeBanner: false,
      title: "Flutter GetX",
      home: ShoppingPractice(),
    );
  }
}


