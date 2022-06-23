import '../blogs_screen/widgets/blogs_item_widget.dart';
import 'controller/blogs_controller.dart';
import 'models/blogs_item_model.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';

class BlogsScreen extends GetWidget<BlogsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration: BoxDecoration(color: ColorConstant.gray50),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(23.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Text("lbl_blogs".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium18
                                          .copyWith(
                                              fontSize: getFontSize(18)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(34.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.blogsModelObj.value
                                          .blogsItemList.length,
                                      itemBuilder: (context, index) {
                                        BlogsItemModel model = controller
                                            .blogsModelObj
                                            .value
                                            .blogsItemList[index];
                                        return BlogsItemWidget(model);
                                      }))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(345.00)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.deepPurpleA200),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        44.00),
                                                    top: getVerticalSize(8.00),
                                                    bottom:
                                                        getVerticalSize(8.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnAdd();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: getVerticalSize(
                                                            34.00),
                                                        width:
                                                            getHorizontalSize(
                                                                86.00),
                                                        decoration: AppDecoration
                                                            .textstyledmsansmedium141,
                                                        child: Text(
                                                            "lbl_add".tr,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstyledmsansmedium141
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            14)))))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(8.00),
                                                    right: getHorizontalSize(
                                                        42.00),
                                                    bottom:
                                                        getVerticalSize(8.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnSettings();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: getVerticalSize(
                                                            34.00),
                                                        width:
                                                            getHorizontalSize(
                                                                86.00),
                                                        decoration: AppDecoration
                                                            .textstyledmsansmedium141,
                                                        child: Text(
                                                            "lbl_settings".tr,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstyledmsansmedium141
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            14))))))
                                          ])))
                            ]))))));
  }

  onTapGroup() {
    // Get.offNamed(AppRoutes.blogoneScreen,
    //     arguments: {NavigationArgs.postId: Temp.pOSTID});
  }

  onTapBtnAdd() {
    Get.toNamed(AppRoutes.writetwoScreen);
  }

  onTapBtnSettings() {
    Get.toNamed(AppRoutes.settingScreen);
  }
}
