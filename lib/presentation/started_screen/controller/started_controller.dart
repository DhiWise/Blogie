import '/core/app_export.dart';
import 'package:blogie/presentation/started_screen/models/started_model.dart';

class StartedController extends GetxController with StateMixin<dynamic> {
  Rx<StartedModel> startedModelObj = StartedModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.onBoardingoneScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
