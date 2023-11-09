import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class VendingMachineGavisconAddToCartScreen extends StatelessWidget {
  const VendingMachineGavisconAddToCartScreen({Key? key}) : super(key: key);

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
                                height: 208.5.v,
                                width: 94.h),
                            SizedBox(height: 10.v),
                            Text("Gaviscon Double Action Liquid 150ml",
                                style: theme.textTheme.titleSmall),
                            Text("RM30.90",
                                style: CustomTextStyles.bodyMediumBlack900),
                            SizedBox(height: 8.v),
                            _buildProductDetails(context),
                            SizedBox(height: 10.v),
                            CustomElevatedButton(
                                height: 40.v,
                                text: "Add to cart",
                                margin: EdgeInsets.symmetric(horizontal: 49.h),
                                onPressed: () {
                                  onTapAddToCart(context);
                                }),
                            SizedBox(height: 23.v)
                          ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return SizedBox(
        height: 400.v,
        width: 344.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 200.v,
                  width: 331.h,
                  margin: EdgeInsets.only(top: 10.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h)))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.v),
                  decoration: AppDecoration.outlineBlack900023.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Container(
                            width: 310.h,
                            height: 350.v,
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

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the vendingMachineGavisconAdjustQuantityScreen when the action is triggered.
  onTapAddToCart(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.vendingMachineGavisconAdjustQuantityScreen);
  }
}
