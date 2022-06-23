import '../controller/succesfull_controller.dart';
import 'package:get/get.dart';

class SuccesfullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccesfullController());
  }
}
