import '../controller/topicsone_controller.dart';
import '../models/group66_item_model.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Group66ItemWidget extends StatelessWidget {
  Group66ItemWidget(this.group66ItemModelObj);

  Group66ItemModel group66ItemModelObj;

  var controller = Get.find<TopicsoneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstant.deepPurple51,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getSize(
                54.00,
              ),
              width: getSize(
                54.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  34.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: getVerticalSize(
                        30.00,
                      ),
                      width: getHorizontalSize(
                        41.11,
                      ),
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
                        ),
                        right: getHorizontalSize(
                          10.00,
                        ),
                        bottom: getVerticalSize(
                          6.40,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray401,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            15.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(
                      () => CommonNetworkImageView(
                        url: group66ItemModelObj.image1Img.value,
                        height: getSize(
                          54.00,
                        ),
                        width: getSize(
                          54.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  20.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  25.00,
                ),
              ),
              child: Obx(
                () => Text(
                  group66ItemModelObj.artTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.textstyledmsansregular131.copyWith(
                    fontSize: getFontSize(
                      13,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
