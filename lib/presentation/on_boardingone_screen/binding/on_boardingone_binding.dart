import '../controller/on_boardingone_controller.dart';
import 'package:get/get.dart';

class OnBoardingoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingoneController());
  }
}
