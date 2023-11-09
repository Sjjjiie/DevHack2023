import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AmbulanceTwoScreen extends StatelessWidget {
  const AmbulanceTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 34.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 61.h),
                          child: Text("The nearest hospital found:",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 32.h),
                              child: Text("Change",
                                  style: CustomTextStyles
                                      .titleSmallInterOrange700))),
                      SizedBox(height: 9.v),
                      _buildHospitalPulauPinang(context),
                      SizedBox(height: 21.v),
                      Container(
                          width: 170.h,
                          margin: EdgeInsets.only(left: 89.h),
                          child: Text(
                              "Distance: 10.1 km\n(estimate 12 minutes)\nPrice: RM300",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 65.v),
                      CustomElevatedButton(
                          height: 50.v,
                          text: "Confirm ",
                          margin: EdgeInsets.only(left: 39.h, right: 61.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: theme.textTheme.titleLarge!,
                          onPressed: () {
                            onTapConfirm(context);
                          })
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
  Widget _buildHospitalPulauPinang(BuildContext context) {
    return SizedBox(
        height: 392.v,
        width: 338.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 56.h, vertical: 20.v),
                  decoration: AppDecoration.fillLightBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Text("Hospital Pulau Pinang",
                      style: CustomTextStyles.titleLargeRegular))),
          CustomImageView(
              imagePath: ImageConstant.imgHospitalPulauPinang,
              height: 321.v,
              width: 338.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the ambulancepaymentScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ambulancepaymentScreen);
  }
}
