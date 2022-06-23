import '/core/app_export.dart';
import 'package:blogie/presentation/writetwo_screen/models/writetwo_model.dart';

class WritetwoController extends GetxController with StateMixin<dynamic> {
  Rx<WritetwoModel> writetwoModelObj = WritetwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
