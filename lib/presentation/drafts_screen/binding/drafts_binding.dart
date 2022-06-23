import '../controller/drafts_controller.dart';
import 'package:get/get.dart';

class DraftsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DraftsController());
  }
}
