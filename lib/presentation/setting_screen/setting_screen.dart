import 'controller/setting_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supabase/supabase.dart';

class SettingScreen extends GetWidget<SettingController> {
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
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(35.00),
                                      top: getVerticalSize(15.00),
                                      bottom: getVerticalSize(564.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgBackbutton();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Container(
                                                    height: getSize(30.00),
                                                    width: getSize(30.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgBackbutton,
                                                        fit: BoxFit.fill)))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapDraft();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(43.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          constraints: BoxConstraints(
                                                              minHeight: getSize(
                                                                  46.00),
                                                              minWidth: getSize(
                                                                  46.00)),
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          icon: Container(
                                                              width: getSize(
                                                                  46.00),
                                                              height: getSize(
                                                                  46.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .teal50,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10.00))),
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          15.50),
                                                                  top: getVerticalSize(
                                                                      15.50),
                                                                  right:
                                                                      getHorizontalSize(15.50),
                                                                  bottom: getVerticalSize(15.50)),
                                                              child: Image.asset(ImageConstant.imgGroup8))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      18.00),
                                                              top: getVerticalSize(
                                                                  14.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      14.00)),
                                                          child: Text(
                                                              "lbl_draft".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstyledmsansregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14))))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSignout();
                                            },
                                            child: Container(
                                                width:
                                                    getHorizontalSize(119.00),
                                                margin: EdgeInsets.only(
                                                    top:
                                                        getVerticalSize(20.00)),
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
                                                      IconButton(
                                                          onPressed: () {},
                                                          constraints: BoxConstraints(
                                                              minHeight: getSize(
                                                                  46.00),
                                                              minWidth: getSize(
                                                                  46.00)),
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          icon: Container(
                                                              width: getSize(
                                                                  46.00),
                                                              height: getSize(
                                                                  46.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .deepPurple51,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10.00))),
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      15.50),
                                                                  top: getVerticalSize(
                                                                      15.50),
                                                                  right:
                                                                      getHorizontalSize(15.50),
                                                                  bottom: getVerticalSize(15.50)),
                                                              child: Image.asset(ImageConstant.imgGroup7))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      14.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      14.00)),
                                                          child: Text(
                                                              "lbl_sign_out".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstyledmsansregular141
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14))))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(5.00),
                                      top: getVerticalSize(18.00),
                                      right: getHorizontalSize(155.00),
                                      bottom: getVerticalSize(723.00)),
                                  child: Text("lbl_setting".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium18
                                          .copyWith(fontSize: getFontSize(18))))
                            ]))))));
  }

  onTapImgBackbutton() {
    Get.back();
  }

  onTapDraft() {
    Get.toNamed(AppRoutes.draftsScreen);
  }

  onTapSignout() async {
    await Get.find<SupabaseClient>().auth.signOut();
    Get.offAllNamed(AppRoutes.signInScreen);
  }
}
