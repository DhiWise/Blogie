import 'package:blogie/presentation/topicsone_screen/models/group66_item_model.dart';

import '/core/app_export.dart';
import 'package:blogie/presentation/topicsone_screen/models/topicsone_model.dart';
import 'package:supabase/supabase.dart';
import 'package:blogie/core/utils/progress_dialog_utils.dart';
import 'package:blogie/supabase/models/category_model.dart';
import 'package:blogie/supabase/models/interests_model.dart';

class TopicsoneController extends GetxController with StateMixin<dynamic> {
  Rx<TopicsoneModel> topicsoneModelObj = TopicsoneModel().obs;

  var categoryModel = <CategoryModel>[];

  var interestsModel = <InterestsModel>[];

  @override
  void onReady() async {
    super.onReady();
    fetchCategoryCollection();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchCategoryCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Category')
          .select()
          .order('id', ascending: true)
          .limit(100)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchCategoryCollectionSuccess(response.data);
      } else {
        onFetchCategoryCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchCategoryCollectionError(err.toString());
    }
  }

  void onFetchCategoryCollectionSuccess(dynamic response) {
    if (response != null) {
      categoryModel =
          (response as List).map((e) => CategoryModel.fromJson(e)).toList();
      for (var item in categoryModel) {
        Group66ItemModel model = Group66ItemModel();
        model.artTxt.value = item.name!;
        model.image1Img.value = item.image!;
        topicsoneModelObj.value.group66ItemList.add(model);
      }
    }
  }

  void onFetchCategoryCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }

  Future<void> createInterestsDocument({dynamic reqParams}) async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Interests')
          .insert(reqParams)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 201) {
        onCreateInterestsDocumentSuccess(response.data);
      } else {
        onCreateInterestsDocumentError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onCreateInterestsDocumentError(err.toString());
    }
  }

  void onCreateInterestsDocumentSuccess(dynamic response) {
    if (response != null) {
      interestsModel =
          (response as List).map((e) => InterestsModel.fromJson(e)).toList();
    }
  }

  void onCreateInterestsDocumentError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
