import 'controller/drafts_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DraftsScreen extends GetWidget<DraftsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(764.00),
                        width: size.width,
                        decoration: BoxDecoration(color: ColorConstant.gray50),
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(20.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: size.width,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        35.00),
                                                    right: getHorizontalSize(
                                                        141.00)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getSize(30.00),
                                                          width: getSize(30.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgGroup26,
                                                              fit:
                                                                  BoxFit.fill)),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      3.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      4.00)),
                                                          child: Text(
                                                              "lbl_draft".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyledmsansmedium18
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              18))))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(127.00),
                                            width: getHorizontalSize(351.00),
                                            margin: EdgeInsets.only(
                                                top: getVerticalSize(45.00)),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      127.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      305.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgGroup150,
                                                                  fit: BoxFit
                                                                      .fill)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          margin: EdgeInsets.only(
                                                              right:
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          30.00))),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            20.00),
                                                                        bottom: getVerticalSize(
                                                                            20.00)),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                20.00)),
                                                                        child: Obx(() => CommonNetworkImageView(
                                                                            url:
                                                                                controller.draftsModelObj.value.rectangle438Img.value,
                                                                            height: getSize(87.00),
                                                                            width: getSize(87.00))))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            17.00),
                                                                        top: getVerticalSize(
                                                                            20.00),
                                                                        right: getHorizontalSize(
                                                                            19.00),
                                                                        bottom: getVerticalSize(
                                                                            20.00)),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              width: getHorizontalSize(146.00),
                                                                              margin: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                              child: Obx(() => Text(controller.draftsModelObj.value.theworldisruTxt.value, maxLines: null, textAlign: TextAlign.left, style: AppStyle.textstyledmsansmedium14.copyWith(fontSize: getFontSize(14))))),
                                                                          Container(
                                                                              width: getHorizontalSize(159.00),
                                                                              margin: EdgeInsets.only(top: getVerticalSize(9.00)),
                                                                              child: Obx(() => Text(controller.draftsModelObj.value.descriptionTxt.value, maxLines: null, textAlign: TextAlign.left, style: AppStyle.textstyledmsansmedium11.copyWith(fontSize: getFontSize(11)))))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top:
                                                        getVerticalSize(20.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                30.00))),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      20.00),
                                                              top: getVerticalSize(
                                                                  20.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      20.00)),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          20.00)),
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .imgRectangle4381,
                                                                  height:
                                                                      getVerticalSize(
                                                                          87.00),
                                                                  width:
                                                                      getHorizontalSize(90.00),
                                                                  fit: BoxFit.fill))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      17.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      20.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      29.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      20.00)),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        134.00),
                                                                    margin: EdgeInsets.only(
                                                                        right: getHorizontalSize(
                                                                            10.00)),
                                                                    child: Text(
                                                                        "msg_introducing_vis"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .textstyledmsansmedium14
                                                                            .copyWith(fontSize: getFontSize(14)))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        171.00),
                                                                    margin: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            9.00)),
                                                                    child: Text(
                                                                        "msg_after_rewrite_i"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .textstyledmsansmedium11
                                                                            .copyWith(fontSize: getFontSize(11))))
                                                              ]))
                                                    ])))
                                      ])))
                        ]))))));
  }
}
