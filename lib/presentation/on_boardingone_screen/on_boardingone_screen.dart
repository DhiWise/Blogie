import 'controller/on_boardingone_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';

class OnBoardingoneScreen extends GetWidget<OnBoardingoneController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: getVerticalSize(262.73),
                                  width: getHorizontalSize(260.73),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(8.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(261.31),
                                                width:
                                                    getHorizontalSize(260.73),
                                                margin: EdgeInsets.only(
                                                    top: getVerticalSize(1.00),
                                                    bottom:
                                                        getVerticalSize(0.42)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height: getSize(
                                                                  130.73),
                                                              width: getSize(
                                                                  130.73),
                                                              margin: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      10.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          0.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .deepPurpleA100,
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius.circular(
                                                                          getHorizontalSize(
                                                                              65.36)),
                                                                      topRight:
                                                                          Radius.circular(getHorizontalSize(0.00)),
                                                                      bottomLeft: Radius.circular(getHorizontalSize(0.00)),
                                                                      bottomRight: Radius.circular(getHorizontalSize(65.36)))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      10.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .imgRectangle407,
                                                                  height: getSize(
                                                                      130.73),
                                                                  width: getSize(
                                                                      130.73),
                                                                  fit: BoxFit
                                                                      .fill)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                height: getVerticalSize(131.78),
                                                width:
                                                    getHorizontalSize(130.73),
                                                margin: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        10.00),
                                                    bottom:
                                                        getVerticalSize(10.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.purple200,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                65.89))))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                height: getSize(130.73),
                                                width: getSize(130.73),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(10.00),
                                                    right:
                                                        getHorizontalSize(0.00),
                                                    bottom:
                                                        getVerticalSize(0.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.pink200,
                                                    borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(
                                                            getHorizontalSize(
                                                                0.00)),
                                                        topRight: Radius.circular(
                                                            getHorizontalSize(
                                                                68.48)),
                                                        bottomLeft: Radius.circular(
                                                            getHorizontalSize(68.48)),
                                                        bottomRight: Radius.circular(getHorizontalSize(65.36))))))
                                      ])),
                              Container(
                                  height: getVerticalSize(130.73),
                                  width: getHorizontalSize(260.73),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(0.27),
                                      right: getHorizontalSize(10.00)),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getSize(130.73),
                                                width: getSize(130.73),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    right: getHorizontalSize(
                                                        0.00)),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant.teal50,
                                                    borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(
                                                            getHorizontalSize(
                                                                0.00)),
                                                        topRight: Radius.circular(
                                                            getHorizontalSize(
                                                                0.00)),
                                                        bottomLeft: Radius.circular(
                                                            getHorizontalSize(0.00)),
                                                        bottomRight: Radius.circular(getHorizontalSize(65.36)))))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getSize(130.73),
                                                width: getSize(130.73),
                                                margin: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .deepPurpleA100,
                                                    borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(
                                                            getHorizontalSize(
                                                                68.48)),
                                                        topRight: Radius.circular(
                                                            getHorizontalSize(
                                                                65.36)),
                                                        bottomLeft: Radius.circular(
                                                            getHorizontalSize(0.00)),
                                                        bottomRight: Radius.circular(getHorizontalSize(65.36))))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(306.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(39.27),
                                          right: getHorizontalSize(24.00)),
                                      child: Text("msg_what_should_i_k".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.textstyledmsansbold33
                                              .copyWith(
                                                  fontSize: getFontSize(33))))),
                              Container(
                                  width: getHorizontalSize(322.00),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(25.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Text("msg_blogie_is_an_op".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium16
                                          .copyWith(
                                              fontSize: getFontSize(16)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtSignin();
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(29.00),
                                              top: getVerticalSize(90.00),
                                              right: getHorizontalSize(29.00),
                                              bottom: getVerticalSize(20.00)),
                                          child: Text("lbl_signin2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textstyledmsansmedium16
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(16))))))
                            ]))))));
  }

  onTapTxtSignin() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
