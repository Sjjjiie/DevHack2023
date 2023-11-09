import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeTwoDraweritem extends StatelessWidget {
  const HomeTwoDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: 242.h,
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 27.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 12.v,
                            width: 6.h,
                            margin: EdgeInsets.symmetric(vertical: 9.v)),
                        Container(
                            width: 67.h,
                            margin: EdgeInsets.only(left: 14.h),
                            child: Text("MENU",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleMediumBold))
                      ]))),
              SizedBox(height: 38.v),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAboutIcon,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        margin: EdgeInsets.only(top: 1.v)),
                    Container(
                        width: 52.h,
                        margin:
                            EdgeInsets.only(left: 31.h, top: 13.v, bottom: 9.v),
                        child: Text("About",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall))
                  ])),
              SizedBox(height: 16.v),
              GestureDetector(
                  onTap: () {
                    onTapHomeIcon(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 3.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHomeIcon,
                                height: 54.v,
                                width: 52.h,
                                margin: EdgeInsets.only(bottom: 3.v)),
                            Container(
                                width: 49.h,
                                margin: EdgeInsets.only(
                                    left: 29.h, top: 12.v, bottom: 18.v),
                                child: Text("Home",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleSmall))
                          ]))),
              SizedBox(height: 19.v),
              Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNotification2Icon,
                            height: 54.v,
                            width: 55.h),
                        Container(
                            width: 104.h,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 10.v, bottom: 17.v),
                            child: Text("Notifications",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 19.v),
              Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingIcon,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Container(
                            width: 68.h,
                            margin: EdgeInsets.only(
                                left: 19.h, top: 10.v, bottom: 14.v),
                            child: Text("Settings",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 16.v),
              Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgContactUsIcon,
                            height: 49.adaptSize,
                            width: 49.adaptSize),
                        Container(
                            width: 89.h,
                            margin: EdgeInsets.only(
                                left: 14.h, top: 5.v, bottom: 17.v),
                            child: Text("Contact Us",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall))
                      ])),
              Spacer(),
              SizedBox(height: 24.v),
              Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSignOutIcon,
                        height: 48.v,
                        width: 37.h),
                    Container(
                        width: 72.h,
                        margin:
                            EdgeInsets.only(left: 30.h, top: 13.v, bottom: 9.v),
                        child: Text("Sign Out",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall))
                  ]))
            ])));
  }

  /// Navigates to the homeOneScreen when the action is triggered.
  onTapHomeIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}
