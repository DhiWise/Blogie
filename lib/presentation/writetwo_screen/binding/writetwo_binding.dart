import '../controller/writetwo_controller.dart';
import 'package:get/get.dart';

class WritetwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WritetwoController());
  }
}
