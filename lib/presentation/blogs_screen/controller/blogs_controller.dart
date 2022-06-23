import 'package:blogie/presentation/blogs_screen/models/blogs_item_model.dart';

import '/core/app_export.dart';
import 'package:blogie/presentation/blogs_screen/models/blogs_model.dart';
import 'package:supabase/supabase.dart';
import 'package:blogie/core/utils/progress_dialog_utils.dart';
import 'package:blogie/supabase/models/posts_model.dart';

class BlogsController extends GetxController with StateMixin<dynamic> {
  Rx<BlogsModel> blogsModelObj = BlogsModel().obs;

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
          .eq('isDraft', false)
          .order('published_date', ascending: false)
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
      for (var item in postsModel) {
        BlogsItemModel model = BlogsItemModel();
        model.theworldisruTxt.value = item.title!;
        model.rectangle438Img.value = item.image!;
        model.descriptionTxt.value = item.description!;
        model.id.value = item.id.toString();
        blogsModelObj.value.blogsItemList.add(model);
      }
    }
  }

  void onFetchPostsCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
  }
}
