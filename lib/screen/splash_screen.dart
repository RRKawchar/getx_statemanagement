import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/views/home_localization.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 10)).then((value){
      Get.to(const HomeLocalization());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: buildWidget(context)
      ),
    );
  }
}
Widget buildWidget(BuildContext context){
  const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
    fontWeight: FontWeight.bold
  );
  return SizedBox(
    width: 250.0,
    child: AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(
          'Hey!!',
          textStyle: colorizeTextStyle,
          colors: colorizeColors,
        ),
        ColorizeAnimatedText(
          'Welcome Here',
          textStyle: colorizeTextStyle,
          colors: colorizeColors,
        ),
        ColorizeAnimatedText(
          'I am Riyazur Rohman Kawchar',
          textStyle: colorizeTextStyle,
          colors: colorizeColors,
        ),
      ],
      isRepeatingAnimation: true,
      onTap: () {
        print("Tap Event");
      },
    ),
  );
}
