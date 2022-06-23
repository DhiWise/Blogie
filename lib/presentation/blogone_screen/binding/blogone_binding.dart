import '../controller/blogone_controller.dart';
import 'package:get/get.dart';

class BlogoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogoneController());
  }
}
