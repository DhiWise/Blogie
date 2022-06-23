import 'controller/blogone_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogoneScreen extends GetWidget<BlogoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapImgArrowLeftCi();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(27.33),
                                          top: getVerticalSize(3.33),
                                          right: getHorizontalSize(27.33)),
                                      child: Container(
                                          height: getSize(33.33),
                                          width: getSize(33.33),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgArrowleftci,
                                              fit: BoxFit.fill)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(29.34),
                                      right: getHorizontalSize(24.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .deepPurpleA200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            25.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      25.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgEllipse77,
                                                              height: getSize(
                                                                  50.00),
                                                              width: getSize(
                                                                  50.00),
                                                              fit:
                                                                  BoxFit.fill)))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(9.00),
                                                top: getVerticalSize(6.00),
                                                bottom: getVerticalSize(7.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Text(
                                                          "lbl_jakob_arcand".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyledmsansmedium16
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          16)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          171.00),
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
                                                            Text(
                                                                "lbl_20_minutes_ago"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textstyledmsansregular12
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(12))),
                                                            Text(
                                                                "lbl_3_minutes_read"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textstyledmsansregular12
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(12)))
                                                          ]))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(25.00),
                                          right: getHorizontalSize(24.00)),
                                      child: Obx(() => Text(
                                          controller.blogoneModelObj.value
                                              .letsGoPutOuTxt.value,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstyledmsansmedium182
                                              .copyWith(
                                                  fontSize:
                                                      getFontSize(18)))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(24.00),
                                          right: getHorizontalSize(24.00)),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(20.00)),
                                          child: Obx(() =>
                                              CommonNetworkImageView(
                                                  url: controller
                                                      .blogoneModelObj
                                                      .value
                                                      .rectangle422Img
                                                      .value,
                                                  height:
                                                      getVerticalSize(209.00),
                                                  width: getHorizontalSize(
                                                      327.00)))))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(19.25)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(24.00),
                                                top: getVerticalSize(1.75)),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              1.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  2.00)),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  10.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  12.50),
                                                          child:
                                                              SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgShow,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  8.50)),
                                                      child: Text("lbl_5172".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyledmsansregular10
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          10)))),
                                                  Container(
                                                      height: getSize(12.00),
                                                      width: getSize(12.00),
                                                      margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  24.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  1.00)),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getSize(
                                                                            12.00),
                                                                    width: getSize(
                                                                        12.00),
                                                                    child: SvgPicture.asset(
                                                                        ImageConstant
                                                                            .imgFill1,
                                                                        fit: BoxFit
                                                                            .fill))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            2.45),
                                                                        top: getVerticalSize(
                                                                            5.25),
                                                                        right: getHorizontalSize(
                                                                            2.48),
                                                                        bottom: getVerticalSize(
                                                                            5.21)),
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            1.54),
                                                                        width: getHorizontalSize(
                                                                            7.07),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgCombinedshape,
                                                                            fit:
                                                                                BoxFit.fill))))
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  2.00)),
                                                      child: Text("lbl_341".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyledmsansregular101
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          10)))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  20.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  1.12)),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  11.88),
                                                          width:
                                                              getHorizontalSize(
                                                                  12.49),
                                                          child:
                                                              SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgHeart,
                                                                  fit: BoxFit
                                                                      .fill))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  8.51)),
                                                      child: Text("lbl_2451".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyledmsansregular10
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          10))))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                right: getHorizontalSize(37.50),
                                                bottom: getVerticalSize(2.25)),
                                            child: Container(
                                                height: getVerticalSize(12.50),
                                                width: getHorizontalSize(10.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgBookmark,
                                                    fit: BoxFit.fill)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(25.00),
                                      bottom: getVerticalSize(17.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  24.00)),
                                                      child: Text("lbl_w".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: AppStyle
                                                              .textstyledmsansregular42
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          42)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          277.00),
                                                      margin: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              7.00),
                                                          top: getVerticalSize(
                                                              8.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  24.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  13.58)),
                                                      child: Text(
                                                          "msg_hy_do_you_do_wh"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: AppStyle
                                                              .textstyledmsansregular141
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14))))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(327.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(2.42),
                                                right:
                                                    getHorizontalSize(10.00)),
                                            child: Obx(() => Text(
                                                controller.blogoneModelObj.value
                                                    .descriptionTxt.value,
                                                maxLines: null,
                                                textAlign: TextAlign.justify,
                                                style: AppStyle
                                                    .textstyledmsansregular141
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(14))))),
                                        Container(
                                            width: getHorizontalSize(327.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(16.00),
                                                right:
                                                    getHorizontalSize(10.00)),
                                            child: Text(
                                                "msg_she_would_do_ti".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.justify,
                                                style: AppStyle
                                                    .textstyledmsansregular141
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(14))))
                                      ]))
                            ]))))));
  }

  onTapImgArrowLeftCi() {
    Get.offNamed(AppRoutes.blogsScreen);
  }
}
