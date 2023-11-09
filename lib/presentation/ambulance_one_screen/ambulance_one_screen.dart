import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';



class AmbulanceOneScreen extends StatelessWidget {
  const AmbulanceOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgUsmMaps,
                          height: 505.v,
                          width: 366.h,
                          margin: EdgeInsets.only(left: 1.h)),
                      SizedBox(height: 12.v),
                      _buildConfirmYourAddress(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 14.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 20.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "Emergency Ambulance Service"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildConfirmYourAddress(BuildContext context) {
    return Container(
        width: 379.h,
        margin: EdgeInsets.only(right: 11.h),
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("Confirm your address",
                      style: CustomTextStyles.titleMediumInterGray90002)),
              SizedBox(height: 3.v),
              SizedBox(
                  height: 17.v,
                  width: 368.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: SizedBox(width: 368.h, child: Divider()))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("Change",
                            style: CustomTextStyles.titleSmallInterOrange700))
                  ])),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 18.h, right: 47.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLocationRed300,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 5.v)),
                    Expanded(
                        child: Container(
                            width: 265.h,
                            margin: EdgeInsets.only(left: 18.h),
                            child: Text(
                                "School of Computer Sciences, Universiti Sains Malaysia, 11800 Gelugor, Penang.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumInterGray70003
                                    .copyWith(height: 1.36))))
                  ])),
              SizedBox(height: 16.v),
              CustomElevatedButton(
               
                  height: 53.v,
                  text: "Confirm Location",
                  margin: EdgeInsets.only(left: 4.h, right: 14.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  onPressed: () {
                    onTapConfirmLocation(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 4.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the ambulanceTwoScreen when the action is triggered.
  onTapConfirmLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ambulanceTwoScreen);
  }
}
