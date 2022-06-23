import '../controller/blogs_controller.dart';
import '../models/blogs_item_model.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlogsItemWidget extends StatelessWidget {
  BlogsItemWidget(this.blogsItemModelObj);

  BlogsItemModel blogsItemModelObj;

  var controller = Get.find<BlogsController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offNamed(AppRoutes.blogoneScreen,
            arguments: {NavigationArgs.postid: blogsItemModelObj.id});
      },
      child: Container(
        margin: EdgeInsets.only(
          left: getHorizontalSize(
            7.00,
          ),
          top: getVerticalSize(
            17.50,
          ),
          right: getHorizontalSize(
            15.00,
          ),
          bottom: getVerticalSize(
            17.50,
          ),
        ),
        decoration: BoxDecoration(
          color: ColorConstant.gray100,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  20.00,
                ),
                top: getVerticalSize(
                  20.00,
                ),
                bottom: getVerticalSize(
                  20.00,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                child: Obx(
                  () => CommonNetworkImageView(
                    url: blogsItemModelObj.rectangle438Img.value,
                    height: getVerticalSize(
                      87.00,
                    ),
                    width: getHorizontalSize(
                      90.00,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  17.00,
                ),
                top: getVerticalSize(
                  20.00,
                ),
                right: getHorizontalSize(
                  19.00,
                ),
                bottom: getVerticalSize(
                  20.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      146.00,
                    ),
                    margin: EdgeInsets.only(
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Obx(
                      () => Text(
                        blogsItemModelObj.theworldisruTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstyledmsansmedium14.copyWith(
                          fontSize: getFontSize(
                            14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      159.00,
                    ),
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        9.00,
                      ),
                    ),
                    child: Obx(
                      () => Text(
                        blogsItemModelObj.descriptionTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstyledmsansmedium11.copyWith(
                          fontSize: getFontSize(
                            11,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
