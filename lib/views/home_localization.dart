import 'package:flutter/material.dart';
import 'package:flutter_getx/screen/splash_screen.dart';
import 'package:get/get.dart';

class HomeLocalization extends StatelessWidget {
  const HomeLocalization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: txtStyle("Languages", 20.0, FontWeight.bold, Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("app_name".tr),
              Text("title".tr),
              const SizedBox(
                height: 10,
              ),
              buttonText(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget txtStyle(
  String txt,
  double size,
  FontWeight fontWeight,
  Color color,
) {
  return Text(
    txt,
    style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

Widget buttonText(BuildContext context) {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Get.snackbar("Hi", "English");
            Get.defaultDialog(title: "This is a defaultDialog english");
            Get.updateLocale(const Locale('en', 'US'));
          },
          child: const Text("English"),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Get.snackbar("Hi", "Bangla");
            Get.defaultDialog(title: "This is a defaultDialog bangla");
            Get.updateLocale(const Locale('bn', 'BD'));

          },
          child: const Text("Bangla"),
        ),
      ],
    ),
  );
}
