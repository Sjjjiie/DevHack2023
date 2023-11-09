import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_checkbox_button.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VendingMachineLocationScreen extends StatelessWidget {
  VendingMachineLocationScreen({Key? key}) : super(key: key);

  bool confirmLocation = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 15.v),
                    child: SizedBox(
                        height: 740.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 25.v),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL25),
                                  child: Column(children: [
                                    _buildUsmMaps(context),
                                    _buildConfirmLocation(context),
                                    SizedBox(height: 250.v),
                                    CustomElevatedButton(
                                        text: "Confirm Location",
                                        margin: EdgeInsets.only(
                                            left: 49.h, right: 50.h, bottom: 5),
                                        onPressed: () {
                                          onTapConfirmLocation(context);
                                        }),
                                    SizedBox(height: 20.v)
                                  ]))),
                          _buildConfirmYourAddress(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 25.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, top: 19.v, bottom: 22.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Vending Machine Nearby"));
  }

  /// Section Widget
  Widget _buildUsmMaps(BuildContext context) {
    return SizedBox(
        height: 337.v,
        width: 349.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUsmMaps337x349,
              height: 337.v,
              width: 349.h,
              radius: BorderRadius.circular(50.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 79.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 18.v,
                            width: 17.h,
                            decoration:
                                BoxDecoration(color: appTheme.indigoA700)),
                        SizedBox(height: 126.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 18.v,
                                width: 17.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigoA700)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildConfirmLocation(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerRight,
                text: "Health Pro Vending Machine",
                value: confirmLocation,
                onChange: (value) {
                  confirmLocation = value;
                })));
  }

  /// Section Widget
  Widget _buildConfirmYourAddress(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 1.h, bottom: 129.v),
            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 2.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(left: 9.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Padding(
                            padding: EdgeInsets.only(top: 15.v),
                            child: Text("Confirm your address",
                                style: CustomTextStyles.titleMediumGray90002)),
                        Container(
                            width: 56.h,
                            margin: EdgeInsets.only(left: 122.h, top: 15.v),
                            child: Text("Change",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallIndigo300))
                      ])),
              SizedBox(height: 2.v),
              Divider(indent: 5.h),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        CustomImageView(
                            imagePath: ImageConstant.imgLocationIndigo300,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 20.v)),
                        Expanded(
                            child: Container(
                                width: 278.h,
                                margin: EdgeInsets.only(left: 18.h),
                                child: Text(
                                    "School of Computer Sciences, Universiti Sains Malaysia, 11800 Gelugor, Penang.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMediumGray70003
                                        .copyWith(height: 1.36))))
                      ])),
              SizedBox(height: 92.v)
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the vendingMachineCategoriesScreen when the action is triggered.
  onTapConfirmLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vendingMachineCategoriesScreen);
  }
}
