import '../controller/topicsone_controller.dart';
import 'package:get/get.dart';

class TopicsoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopicsoneController());
  }
}
