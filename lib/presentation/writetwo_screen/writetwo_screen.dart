import 'controller/writetwo_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WritetwoScreen extends GetWidget<WritetwoController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(15.00)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(30.00),
                                              right: getHorizontalSize(37.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgGroup3();
                                                    },
                                                    child: Container(
                                                        height: getSize(30.00),
                                                        width: getSize(30.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup3,
                                                            fit: BoxFit.fill))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            5.00),
                                                        bottom: getVerticalSize(
                                                            5.00)),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtDraft();
                                                              },
                                                              child: Text(
                                                                  "lbl_draft"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .textstyledmsansregular15
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(15)))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtNext();
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          21.00)),
                                                                  child: Text(
                                                                      "lbl_next"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstyledmsansregular151
                                                                          .copyWith(
                                                                              fontSize: getFontSize(15)))))
                                                        ]))
                                              ])))),
                              Container(
                                  height: getVerticalSize(387.00),
                                  width: getHorizontalSize(327.00),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(24.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: ColorConstant.whiteA700,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(10.00))),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            21.50),
                                                        top: getVerticalSize(
                                                            19.00),
                                                        right: getHorizontalSize(
                                                            21.50),
                                                        bottom: getVerticalSize(
                                                            19.00)),
                                                    child: Text(
                                                        "msg_will_scrum_fall"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textstyledmsansmedium14
                                                            .copyWith(
                                                                fontSize: getFontSize(
                                                                    14))))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            25.00),
                                                        top: getVerticalSize(
                                                            5.00),
                                                        right:
                                                            getHorizontalSize(
                                                                25.00),
                                                        bottom: getVerticalSize(
                                                            10.00)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          272.00),
                                                                  child: Text(
                                                                      "msg_in_its_core_sc"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstyledmsansregular141
                                                                          .copyWith(
                                                                              fontSize: getFontSize(14))))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          67.00),
                                                                      top: getVerticalSize(
                                                                          97.44),
                                                                      right: getHorizontalSize(
                                                                          67.00)),
                                                                  child: Text(
                                                                      "lbl_i"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstylehkgroteskmedium16
                                                                          .copyWith(
                                                                              fontSize: getFontSize(16)))))
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapImgGroup3() {
    Get.back();
  }

  onTapTxtDraft() {
    Get.toNamed(AppRoutes.postScreen);
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.postScreen);
  }
}
