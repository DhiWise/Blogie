import 'package:blogie/routes/app_routes.dart';

import 'controller/sign_in_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

class SignInScreen extends GetWidget<SignInController> {
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
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(130.73),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(44.00),
                                          right: getHorizontalSize(24.00)),
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
                                      child:
                                          Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
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
                                      ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(41.27),
                                      right: getHorizontalSize(24.00)),
                                  child: Text("lbl_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium16
                                          .copyWith(
                                              fontSize: getFontSize(16)))),
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
                                          controller: controller.email,
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(15.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(15.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              disabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(getHorizontalSize(15.00)),
                                                  borderSide: BorderSide(color: Colors.transparent)),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide.none),
                                              filled: true,
                                              fillColor: ColorConstant.gray100,
                                              isDense: true)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(20.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium16
                                          .copyWith(
                                              fontSize: getFontSize(16)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Container(
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(327.00),
                                      child: TextFormField(
                                          obscureText: true,
                                          focusNode: FocusNode(),
                                          controller: controller.password,
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(15.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(15.00)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              disabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(getHorizontalSize(15.00)),
                                                  borderSide: BorderSide(color: Colors.transparent)),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide.none),
                                              filled: true,
                                              fillColor: ColorConstant.gray100,
                                              isDense: true)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(24.00),
                                          top: getVerticalSize(120.00),
                                          right: getHorizontalSize(24.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnSignin();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(40.00),
                                              width: getHorizontalSize(110.00),
                                              decoration: AppDecoration
                                                  .textstyledmsansmedium161,
                                              child: Text("lbl_sign_in".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyledmsansmedium161
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              16))))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveana();
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: getHorizontalSize(24.00),
                                              top: getVerticalSize(139.00),
                                              right: getHorizontalSize(24.00),
                                              bottom: getVerticalSize(20.00)),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_don_t_have_an_a2"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray400,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray700,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                TextSpan(
                                                    text: "lbl_sign_up2".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .deepPurpleA200,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]),
                                              textAlign: TextAlign.left))))
                            ]))))));
  }

  onTapBtnSignin() async {
    GotrueSessionResponse supabaseSignInUser =
        await Get.find<SupabaseClient>().auth.signIn(
              email: controller.email.text,
              password: controller.password.text,
            );
    if (supabaseSignInUser.error != null) {
      onErrorSupabaseSignInResponse(supabaseSignInUser.error);
    } else {
      onSuccessSupabaseSignInResponse(supabaseSignInUser);
    }
  }

  onSuccessSupabaseSignInResponse(GotrueSessionResponse supabaseSignInUser) {
    Get.find<PrefUtils>()
        .setUserId(supabaseSignInUser.user?.id.toString() ?? "");
    Get.find<PrefUtils>()
        .setEmail(supabaseSignInUser.user?.email!.toString() ?? "");
    Get.toNamed(AppRoutes.blogsScreen);
  }

  onErrorSupabaseSignInResponse(error) {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Login Failed",
        middleText: error.toString());
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
