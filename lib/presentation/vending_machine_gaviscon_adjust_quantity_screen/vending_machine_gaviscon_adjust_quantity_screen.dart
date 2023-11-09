import 'package:devhack/core/app_export.dart';
import 'package:flutter/material.dart';

class VendingMachineGavisconAdjustQuantityScreen extends StatelessWidget {
  const VendingMachineGavisconAdjustQuantityScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 18.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 12.v,
                            width: 6.h,
                            margin: EdgeInsets.only(left: 43.h),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ]),
                      SizedBox(height: 30.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 7.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL25),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage30,
                                height: 218.v,
                                width: 94.h),
                            SizedBox(height: 10.v),
                            Text("Gaviscon Double Action Liquid 150ml",
                                style: theme.textTheme.titleSmall),
                            Text("RM30.90",
                                style: CustomTextStyles.bodyMediumBlack900),
                            SizedBox(height: 8.v),
                            _buildProductDetails(context),
                            SizedBox(height: 32.v),
                            _buildFrameTwentyThree(context),
                            SizedBox(height: 19.v)
                          ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return SizedBox(
        height: 373.v,
        width: 344.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 310.v,
                  width: 331.h,
                  margin: EdgeInsets.only(top: 16.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.h)))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
                  decoration: AppDecoration.outlineBlack900023.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Container(
                            width: 310.h,
                            height: 340.v,
                            margin: EdgeInsets.only(right: 15.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Product details :\n",
                                      style: CustomTextStyles.titleSmall14),
                                  TextSpan(
                                      text:
                                          "Complete relief from heartburn and   indigestion\nNeutralise excess stomach acid to relief discomfort \nFast acting\n\n",
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text: "Intake Instructions :\n",
                                      style: CustomTextStyles.titleSmall14),
                                  TextSpan(
                                      text:
                                          "Adults and children under 12 years and over \ntake 10-20 ml after meals and at bedtime , up to 4 times a day. Children under 12 years old should only be taken on medical advice.\n\n",
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text:
                                          "Expiry Date :\n 10/24 \n\n\n\n\n\n",
                                      style: CustomTextStyles.titleSmall14)
                                ]),
                                textAlign: TextAlign.left))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyThree(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameTwentyThree(context);
        },
        child: Container(
            margin: EdgeInsets.only(left: 11.h, right: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            decoration: AppDecoration.outlineBluegray400,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage52,
                      height: 29.v,
                      width: 33.h,
                      margin:
                          EdgeInsets.only(left: 1.h, top: 3.v, bottom: 3.v)),
                  Spacer(flex: 48),
                  Text("1", style: CustomTextStyles.titleLargeBold),
                  Spacer(flex: 51),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage5235x27,
                      height: 35.v,
                      width: 27.h,
                      radius: BorderRadius.circular(8.h))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the checkoutOrderSummaryOneScreen when the action is triggered.
  onTapFrameTwentyThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutOrderSummaryOneScreen);
  }
}
