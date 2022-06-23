import 'controller/sign_up_controller.dart';
import 'package:blogie/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

class SignUpScreen extends GetWidget<SignUpController> {
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
                                      top: getVerticalSize(27.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Text("lbl_username".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium16
                                          .copyWith(
                                              fontSize: getFontSize(16)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(5.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Container(
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(327.00),
                                      child: TextFormField(
                                          focusNode: FocusNode(),
                                          controller: controller.username,
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
                                      top: getVerticalSize(27.00),
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
                                      top: getVerticalSize(5.00),
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
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(27.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Text("msg_confirm_passwor".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyledmsansmedium16
                                          .copyWith(
                                              fontSize: getFontSize(16)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(24.00),
                                      top: getVerticalSize(5.00),
                                      right: getHorizontalSize(24.00)),
                                  child: Container(
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(327.00),
                                      child: TextFormField(
                                          obscureText: true,
                                          focusNode: FocusNode(),
                                          controller: controller.cpassword,
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
                                          top: getVerticalSize(71.00),
                                          right: getHorizontalSize(24.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnSignup();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(40.00),
                                              width: getHorizontalSize(110.00),
                                              decoration: AppDecoration
                                                  .textstyledmsansmedium161,
                                              child: Text("lbl_sign_up".tr,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyledmsansmedium161
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              16)))))))
                            ]))))));
  }

  onTapBtnSignup() async {
    GotrueSessionResponse supabaseSignUpUser =
        await Get.find<SupabaseClient>().auth.signUp(
              controller.email.text,
              controller.password.text,
            );
    if (supabaseSignUpUser.error != null) {
      onErrorSupabaseSignUpResponse(supabaseSignUpUser.error);
    } else if (supabaseSignUpUser.data == null &&
        supabaseSignUpUser.user == null) {
      Get.snackbar('msg',
          'Please check your email and follow the instructions to verify your email address.');
    } else {
      onSuccessSupabaseSignUpResponse(supabaseSignUpUser);
    }
  }

  onSuccessSupabaseSignUpResponse(GotrueSessionResponse supabaseSignUpUser) {
    Get.find<PrefUtils>()
        .setUserid(supabaseSignUpUser.user?.id.toString() ?? "");
    Get.find<PrefUtils>()
        .setEmail(supabaseSignUpUser.user?.email!.toString() ?? "");
    Get.toNamed(AppRoutes.topicsoneScreen);
  }

  onErrorSupabaseSignUpResponse(error) {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Login Failed",
        middleText: error.toString());
  }
}
