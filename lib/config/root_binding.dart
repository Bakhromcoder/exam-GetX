
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class RootBinding implements Bindings {

  @override
  void dependencies(){
    Get.lazyPut(() => HomeController(), fenix: true); }
}