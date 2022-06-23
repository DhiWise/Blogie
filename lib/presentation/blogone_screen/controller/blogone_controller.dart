import '/core/app_export.dart';
import 'package:blogie/presentation/blogone_screen/models/blogone_model.dart';
import 'package:supabase/supabase.dart';
import 'package:blogie/core/utils/progress_dialog_utils.dart';
import 'package:blogie/supabase/models/posts_model.dart';

class BlogoneController extends GetxController with StateMixin<dynamic> {
  var postid = Get.arguments[NavigationArgs.postid];

  Rx<BlogoneModel> blogoneModelObj = BlogoneModel().obs;

  var postsModel = PostsModel();

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
          .eq('id', postid)
          .single()
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
      postsModel = PostsModel.fromJson(response);
      if (postsModel != null) {
        blogoneModelObj.value.letsGoPutOuTxt.value =
            postsModel.title!.toString();
        blogoneModelObj.value.rectangle422Img.value =
            postsModel.image!.toString();
        blogoneModelObj.value.descriptionTxt.value =
            postsModel.content!.toString();
      }
    }
  }

  void onFetchPostsCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
