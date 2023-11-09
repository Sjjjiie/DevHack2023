import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AmbulancepaymentdoneDialog extends StatelessWidget {
  const AmbulancepaymentdoneDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 41.v),
        decoration: AppDecoration.outlineBlack900021
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 14.v),
              Container(
                  height: 102.adaptSize,
                  width: 102.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 31.v,
                      width: 41.h,
                      radius: BorderRadius.circular(3.h),
                      alignment: Alignment.center)),
              SizedBox(height: 42.v),
              Text("Payment Success",
                  style: CustomTextStyles.titleLargeInterOnErrorContainer),
              SizedBox(height: 10.v),
              Text("Your rider is on the way to your destination",
                  style: CustomTextStyles.bodyMediumRobotoGray800),
              SizedBox(height: 74.v),
              CustomElevatedButton(
                  height: 56.v,
                  width: 183.h,
                  text: "Complete",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumInter,
                  onPressed: () {
                    onTapComplete(context);
                  })
            ]));
  }

  /// Navigates to the homeOneScreen when the action is triggered.
  onTapComplete(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}
