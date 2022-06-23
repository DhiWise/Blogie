import '/core/app_export.dart';
import 'package:blogie/presentation/drafts_screen/models/drafts_model.dart';
import 'package:supabase/supabase.dart';
import 'package:blogie/core/utils/progress_dialog_utils.dart';
import 'package:blogie/supabase/models/posts_model.dart';

class DraftsController extends GetxController with StateMixin<dynamic> {
  Rx<DraftsModel> draftsModelObj = DraftsModel().obs;

  var postsModel = <PostsModel>[];

  @override
  void onReady() async {
    super.onReady();
    fetchPostsCollection();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchPostsCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Posts')
          .select()
          .order('id', ascending: true)
          .limit(10)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchPostsCollectionSuccess(response.data);
      } else {
        onFetchPostsCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchPostsCollectionError(err.toString());
    }
  }

  void onFetchPostsCollectionSuccess(dynamic response) {
    if (response != null) {
      postsModel =
          (response as List).map((e) => PostsModel.fromJson(e)).toList();
      if (postsModel != null) {
        for (var item in postsModel) {}
      }
    }
  }

  void onFetchPostsCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
