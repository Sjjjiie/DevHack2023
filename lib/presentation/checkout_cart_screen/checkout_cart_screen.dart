import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
//import 'package:devhack/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckoutCartScreen extends StatelessWidget {
  CheckoutCartScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 12.v, bottom: 1.v),
                padding: EdgeInsets.symmetric(vertical: 32.v),
                decoration: AppDecoration.fillWhiteA
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Padding(
                          padding: EdgeInsets.only(left: 31.h),
                          child: Text("Order Summary",
                              style: theme.textTheme.titleMedium)),
                      Divider(indent: 13.h),
                      SizedBox(height: 15.v),
                      _buildOrderSummary(context),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 37.h),
                          child: Text("Payment",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 59.h),
                          child: Text("Payment options",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 294.h,
                              margin: EdgeInsets.only(left: 59.h, right: 37.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlack90002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(right: 46.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup74,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 11.v, bottom: 10.v),
                                              onTap: () {
                                                onTapImgImage(context);
                                              }),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 26.h),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIconCreditCard,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 6.v)),
                                                    Expanded(
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 17.h),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "Credit or debit card",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyMedium),
                                                                  Text(
                                                                      "add new card",
                                                                      style: CustomTextStyles
                                                                          .bodySmallGray500)
                                                                ])))
                                                  ])))
                                        ])),
                                    SizedBox(height: 10.v),
                                    Opacity(
                                        opacity: 0.3,
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Divider(
                                                color: appTheme.black90002
                                                    .withOpacity(0.46),
                                                indent: 24.h,
                                                endIndent: 10.h))),
                                    SizedBox(height: 17.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 46.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse9,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 11.v, bottom: 10.v),
                                              onTap: () {
                                                onTapImgImage(context);
                                              }),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 26.h),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 17.h),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      "Touch N Go",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyMedium),
                                                                ])))
                                                  ])))
                                        ])),
                                    SizedBox(height: 8.v)
                                  ]))),
                      SizedBox(height: 120.v),
                      CustomElevatedButton(
                          width: 251.h,
                          text: "Proceed to payment",
                          buttonTextStyle: CustomTextStyles.titleMedium17,
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 43.h, top: 19.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Checkout"));
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
            decoration: AppDecoration.fillLightBlueC
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5.v),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      decoration: AppDecoration.outlineBlack90002.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(left: 25.h, right: 32.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 187.h,
                                      child: Text(
                                          "x1 Gaviscon Double Action Liquid 150ml",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.h, bottom: 22.v),
                                      child: Text("RM 30.90",
                                          style: CustomTextStyles
                                              .bodyMediumGray900))
                                ])),
                        SizedBox(height: 13.v),
                        Opacity(
                            opacity: 0.3,
                            child: Divider(
                                color: appTheme.black90002.withOpacity(0.46))),
                        SizedBox(height: 6.v),
                        Padding(
                            padding: EdgeInsets.only(left: 25.h, right: 31.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Subtotal",
                                      style: theme.textTheme.bodyMedium),
                                  Text("RM 30.90",
                                      style: CustomTextStyles.bodyMediumGray900)
                                ])),
                        SizedBox(height: 7.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 25.h, right: 38.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("Delivery fee",
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      Text("RM 2.00",
                                          style: CustomTextStyles
                                              .bodyMediumGray900)
                                    ])))
                      ])),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "By completing this order, I agree to all ",
                                    style: CustomTextStyles
                                        .bodySmallBlack9000210_1),
                                TextSpan(
                                    text: "terms & conditions.",
                                    style: CustomTextStyles.bodySmallRedA700)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 29.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 47.h,
                                child: Text("Total",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.titleMediumMedium_1)),
                            Container(
                                width: 80.h,
                                margin: EdgeInsets.only(left: 149.h),
                                child: Text("RM 32.90 ",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleMediumMedium))
                          ]))
                ])));
  }

  // /// Section Widget
  // Widget _buildTouchNGoEWallet(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(right: 33.h),
  //     // child: CustomRadioButton(
  //     //     text: "Touch N Go E-Wallet",
  //     //     value: "Touch N Go E-Wallet",
  //     //     groupValue: radioGroup,
  //     //     onChange: (value) {
  //     //        radioGroup = value;
  //     //     })
  //   );
  // }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentAddCardScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentAddCardScreen);
  }
}
