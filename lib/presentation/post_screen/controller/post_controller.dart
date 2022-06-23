import '/core/app_export.dart';
import 'package:blogie/presentation/post_screen/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:blogie/core/utils/progress_dialog_utils.dart';
import 'package:blogie/supabase/models/posts_model.dart';

class PostController extends GetxController with StateMixin<dynamic> {
  TextEditingController rectangle201Controller = TextEditingController();

  TextEditingController rectangle202Controller = TextEditingController();

  Rx<PostModel> postModelObj = PostModel().obs;

  var postsModel = <PostsModel>[];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    rectangle201Controller.dispose();
    rectangle202Controller.dispose();
  }

  Future<void> createPostsDocument({dynamic reqParams}) async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Posts')
          .insert(reqParams)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 201) {
        onCreatePostsDocumentSuccess(response.data);
      } else {
        onCreatePostsDocumentError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onCreatePostsDocumentError(err.toString());
    }
  }

  void onCreatePostsDocumentSuccess(dynamic response) {
    if (response != null) {
      postsModel =
          (response as List).map((e) => PostsModel.fromJson(e)).toList();
    }
    Get.toNamed(AppRoutes.succesfullScreen);
  }

  void onCreatePostsDocumentError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
