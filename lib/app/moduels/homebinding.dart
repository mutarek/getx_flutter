import 'package:get/get.dart';
import 'package:getx_flutter/app/controllers/homecontroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}