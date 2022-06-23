import '../topicsone_screen/widgets/group66_item_widget.dart';
import 'controller/topicsone_controller.dart';
import 'models/group66_item_model.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:blogie/supabase/models/interests_model.dart';

class TopicsoneScreen extends GetWidget<TopicsoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(23.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          right: getHorizontalSize(24.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width:
                                                    getHorizontalSize(123.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Text(
                                                    "msg_welcome_to_blog".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstyledmsansmedium22
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    22)))),
                                            Container(
                                                width:
                                                    getHorizontalSize(242.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(39.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Text(
                                                    "msg_select_at_least".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstyledmsansregular14
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    14)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            40.00)),
                                                    child: Obx(() =>
                                                        GridView.builder(
                                                            shrinkWrap: true,
                                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                mainAxisExtent:
                                                                    getVerticalSize(
                                                                        151.00),
                                                                crossAxisCount:
                                                                    2,
                                                                mainAxisSpacing:
                                                                    getHorizontalSize(
                                                                        27.00),
                                                                crossAxisSpacing:
                                                                    getHorizontalSize(
                                                                        27.00)),
                                                            physics:
                                                                NeverScrollableScrollPhysics(),
                                                            itemCount: controller
                                                                .topicsoneModelObj
                                                                .value
                                                                .group66ItemList
                                                                .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              Group66ItemModel
                                                                  model =
                                                                  controller
                                                                      .topicsoneModelObj
                                                                      .value
                                                                      .group66ItemList[index];
                                                              return Group66ItemWidget(
                                                                  model);
                                                            })))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(30.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnContinue();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: getVerticalSize(
                                                            39.00),
                                                        width:
                                                            getHorizontalSize(
                                                                135.00),
                                                        decoration: AppDecoration
                                                            .textstyledmsansmedium162,
                                                        child: Text(
                                                            "lbl_continue".tr,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstyledmsansmedium162
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            16))))))
                                          ])))))
                    ]))));
  }

  onTapBtnContinue() async {
    var interestsModelReq = InterestsModel();
    controller.createInterestsDocument(
      reqParams: interestsModelReq.toJson(),
    );
  }
}
