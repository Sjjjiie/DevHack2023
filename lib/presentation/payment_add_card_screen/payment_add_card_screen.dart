import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:devhack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentAddCardScreen extends StatelessWidget {
  PaymentAddCardScreen({Key? key}) : super(key: key);

  TextEditingController nameOfTheCardController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController cvcController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 48.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Add a Credit / Debit card",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  height: 192.v,
                                  width: 296.h,
                                  decoration: AppDecoration.gradientTealToIndigo
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                                height: 192.v,
                                                width: 197.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse,
                                                          height: 192.v,
                                                          width: 197.h,
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgMcSymbol3,
                                                          height: 32.v,
                                                          width: 51.h,
                                                          radius: BorderRadius
                                                              .circular(8.h),
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 24.v,
                                                                  right: 23.h))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .outlineOnPrimary,
                                                child: Text(
                                                    "4848 4848 4848 4848",
                                                    style: theme.textTheme
                                                        .headlineSmall))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 24.v),
                                                decoration: AppDecoration
                                                    .outlineOnPrimary,
                                                child: Text(
                                                    "Jack dawson".toUpperCase(),
                                                    style: CustomTextStyles
                                                        .bodyMediumWhiteA700))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                width: 43.h,
                                                margin: EdgeInsets.only(
                                                    right: 22.h, bottom: 22.v),
                                                decoration: AppDecoration
                                                    .outlineOnPrimary,
                                                child: Text("07/24",
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumWhiteA700_1
                                                        .copyWith(
                                                            height: 2.21))))
                                      ])))),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Name of the card holder",
                              style: CustomTextStyles.bodyMediumGray70002)),
                      SizedBox(height: 7.v),
                      _buildNameOfTheCard(context),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Card Number",
                              style: CustomTextStyles.bodyMediumGray70002)),
                      SizedBox(height: 6.v),
                      _buildCardNumber(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Row(children: [
                            Text("Expiry date",
                                style: CustomTextStyles.bodyMediumGray70002),
                            Padding(
                                padding: EdgeInsets.only(left: 90.h),
                                child: Text("CVC",
                                    style:
                                        CustomTextStyles.bodyMediumGray70002))
                          ])),
                      SizedBox(height: 2.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 86.h),
                          child: Row(children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 1.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 1.v),
                                decoration: AppDecoration.outlineGray700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 2.v),
                                      SizedBox(
                                          width: 47.h,
                                          child: Text("07/24",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyLargeGray70001))
                                    ])),
                            _buildCvc(context)
                          ])),
                      SizedBox(height: 94.v),
                      _buildSaveThisCard(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildNameOfTheCard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            width: 186.h,
            controller: nameOfTheCardController,
            hintText: "Jack Dawson"));
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: cardNumberController,
            hintText: "4848 4848 4848 4848 ",
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 7.v, 14.h, 9.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMcSymbol3,
                    height: 20.v,
                    width: 32.h)),
            suffixConstraints: BoxConstraints(maxHeight: 37.v),
            contentPadding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 2.v)));
  }

  /// Section Widget
  Widget _buildCvc(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 53.h),
        child: CustomTextFormField(
            width: 86.h,
            controller: cvcController,
            hintText: "484",
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildSaveThisCard(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        text: "Save this card",
        margin: EdgeInsets.only(left: 59.h, right: 47.h),
        onPressed: () {
          onTapSaveThisCard(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the checkoutCartOneScreen when the action is triggered.
  onTapSaveThisCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutCartOneScreen);
  }
}
