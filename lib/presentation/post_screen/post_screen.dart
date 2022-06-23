import 'controller/post_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blogie/supabase/models/posts_model.dart';

class PostScreen extends GetWidget<PostController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(35.00),
                                          top: getVerticalSize(15.00),
                                          right: getHorizontalSize(35.00)),
                                      child: Container(
                                          height: getSize(30.00),
                                          width: getSize(30.00),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgGroup5,
                                              fit: BoxFit.fill)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(129.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(43.00),
                                          right: getHorizontalSize(24.00)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(10.00))),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(49.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: IconButton(
                                                    onPressed: () {},
                                                    constraints: BoxConstraints(
                                                        minHeight:
                                                            getSize(20.00),
                                                        minWidth:
                                                            getSize(20.00)),
                                                    padding: EdgeInsets.all(0),
                                                    icon: Container(
                                                        width: getSize(20.00),
                                                        height: getSize(20.00),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .deepPurpleA2007e,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        5.00))),
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(6.00),
                                                            top: getVerticalSize(6.00),
                                                            right: getHorizontalSize(6.00),
                                                            bottom: getVerticalSize(6.00)),
                                                        child: Image.asset(ImageConstant.imgPlus)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(7.00),
                                                    right: getHorizontalSize(
                                                        10.00),
                                                    bottom:
                                                        getVerticalSize(46.00)),
                                                child: Text("lbl_add_photo".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstyledmsansregular13
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    13))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(32.00),
                                          right: getHorizontalSize(24.00)),
                                      child: Text("lbl_tittle".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstyledmsansmedium16
                                              .copyWith(
                                                  fontSize: getFontSize(16))))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Container(
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(327.00),
                                      child: TextFormField(
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.rectangle201Controller,
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(5.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(5.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              disabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(5.00)),
                                                  borderSide: BorderSide(color: Colors.transparent)),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide.none),
                                              filled: true,
                                              fillColor: ColorConstant.whiteA700,
                                              isDense: true)))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(16.00),
                                          right: getHorizontalSize(24.00)),
                                      child: Text("lbl_tags".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstyledmsansmedium16
                                              .copyWith(
                                                  fontSize: getFontSize(16))))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Container(
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(327.00),
                                      child: TextFormField(
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.rectangle202Controller,
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(5.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(5.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              disabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(5.00)),
                                                  borderSide: BorderSide(color: Colors.transparent)),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), borderSide: BorderSide.none),
                                              filled: true,
                                              fillColor: ColorConstant.whiteA700,
                                              isDense: true)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(249.00),
                                          right: getHorizontalSize(24.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnPost();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(40.00),
                                              width: getHorizontalSize(119.00),
                                              decoration: AppDecoration
                                                  .textstyledmsansmedium161,
                                              child: Text("lbl_post".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyledmsansmedium161
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              16)))))))
                            ]))))));
  }

  onTapBtnPost() async {
    var postsModelReq = PostsModel(
      title: controller.rectangle201Controller.text.toString(),
      tags: controller.rectangle202Controller.text.toString(),
    );
    controller.createPostsDocument(
      reqParams: postsModelReq.toJson(),
    );
  }
}
