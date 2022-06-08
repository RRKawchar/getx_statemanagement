import 'package:flutter_getx/languages/ban.dart';
import 'package:flutter_getx/languages/eng.dart';
import 'package:get/get.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':eng,
    'bn_BD':ban

  };

}