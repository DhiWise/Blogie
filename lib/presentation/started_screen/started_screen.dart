import 'controller/started_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';

class StartedScreen extends GetWidget<StartedController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: getHorizontalSize(130.73),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(341.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.deepPurple51,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                              getHorizontalSize(68.48)),
                                          topRight: Radius.circular(
                                              getHorizontalSize(68.48)),
                                          bottomLeft: Radius.circular(
                                              getHorizontalSize(68.48)),
                                          bottomRight: Radius.circular(
                                              getHorizontalSize(0.00)))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(16.00),
                                                right:
                                                    getHorizontalSize(10.00)),
                                            child: Text("lbl_b".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstylelobsterregular57
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(57)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(8.00),
                                                right: getHorizontalSize(10.00),
                                                bottom: getVerticalSize(28.73)),
                                            child: Text("lbl_blogie".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstylelobsterregular22
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(22))))
                                      ]))
                            ]))))));
  }
}
