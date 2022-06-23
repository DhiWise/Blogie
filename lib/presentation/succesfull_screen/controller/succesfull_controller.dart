import '/core/app_export.dart';
import 'package:blogie/presentation/succesfull_screen/models/succesfull_model.dart';

class SuccesfullController extends GetxController with StateMixin<dynamic> {
  Rx<SuccesfullModel> succesfullModelObj = SuccesfullModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
