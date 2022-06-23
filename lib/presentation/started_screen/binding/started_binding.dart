import '../controller/started_controller.dart';
import 'package:get/get.dart';

class StartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartedController());
  }
}
