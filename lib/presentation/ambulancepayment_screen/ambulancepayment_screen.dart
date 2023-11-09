import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_title.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:devhack/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:devhack/presentation/ambulancepaymentdone_dialog/ambulancepaymentdone_dialog.dart';

// ignore_for_file: must_be_immutable
class AmbulancepaymentScreen extends StatelessWidget {
  AmbulancepaymentScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 7.v, bottom: 1.v),
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 23.v),
                decoration: AppDecoration.fillWhiteA
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("Order Summary",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 8.v),
                      _buildEmergencyAmbulance(context),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text("Payment Method",
                              style: CustomTextStyles.titleSmallInter)),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 301.h,
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 7.v),
                              decoration: AppDecoration.outlineBlack90002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup74,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 17.v, bottom: 14.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMcSymbol3,
                                              height: 20.v,
                                              width: 32.h,
                                              margin: EdgeInsets.only(
                                                  left: 17.h,
                                                  top: 13.v,
                                                  bottom: 13.v)),
                                          Container(
                                              width: 80.h,
                                              margin:
                                                  EdgeInsets.only(left: 13.h),
                                              child: Text(
                                                  "Mastercard\n**** 4848",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium))
                                        ])),
                                    SizedBox(height: 6.v),
                                    Opacity(
                                        opacity: 0.3,
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Divider(
                                                color: appTheme.black90002
                                                    .withOpacity(0.46),
                                                indent: 25.h,
                                                endIndent: 18.h))),
                                    SizedBox(height: 13.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, right: 59.h),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 8.v, bottom: 13.v),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7.h),
                                                      border: Border.all(
                                                          color: appTheme
                                                              .gray50001,
                                                          width: 1.h))),
                                              Expanded(
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 21.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgIconCreditCard,
                                                                height: 24
                                                                    .adaptSize,
                                                                width: 24
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            3.v,
                                                                        bottom:
                                                                            9.v)),
                                                            Expanded(
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 17
                                                                            .h),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "Credit or debit card",
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "add new card",
                                                                              style: CustomTextStyles.bodySmallGray500)
                                                                        ])))
                                                          ])))
                                            ])),
                                    SizedBox(height: 10.v),
                                    Opacity(
                                        opacity: 0.3,
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Divider(
                                                color: appTheme.black90002
                                                    .withOpacity(0.46),
                                                indent: 25.h,
                                                endIndent: 18.h))),
                                    SizedBox(height: 17.v),
                                    _buildTouchNGoEWallet(context),
                                    SizedBox(height: 10.v)
                                  ]))),
                      Spacer(),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          height: 40.v,
                          text: "Complete Payment",
                          margin: EdgeInsets.symmetric(horizontal: 51.h),
                          onPressed: () {
                            onTapCompletePayment(context);
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 43.h, top: 19.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Checkout"));
  }

  /// Section Widget
  Widget _buildEmergencyAmbulance(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
        decoration: AppDecoration.fillLightBlueC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  decoration: AppDecoration.outlineBlack90002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 25.h, right: 28.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 162.h,
                                      child: Text("Emergency Ambulance Service",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 40.h, bottom: 22.v),
                                      child: Text("RM 300.00",
                                          style: CustomTextStyles
                                              .bodyMediumGray900))
                                ])),
                        SizedBox(height: 15.v),
                        Opacity(
                            opacity: 0.3,
                            child: Divider(
                                color: appTheme.black90002.withOpacity(0.46))),
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h, right: 22.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 47.h,
                                      child: Text("Total",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleMediumMedium_1)),
                                  Container(
                                      width: 91.h,
                                      margin: EdgeInsets.only(left: 149.h),
                                      child: Text("RM 300.00",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleMediumMedium))
                                ]))
                      ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "By completing this order, I agree to all ",
                            style: CustomTextStyles.bodySmallBlack9000210_1),
                        TextSpan(
                            text: "terms & conditions.",
                            style: CustomTextStyles.bodySmallRedA700)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildTouchNGoEWallet(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 47.h),
        child: CustomRadioButton(
            text: "Touch N Go E-Wallet",
            value: "Touch N Go E-Wallet",
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Displays a dialog with the [AmbulancepaymentdoneDialog] content.
  onTapCompletePayment(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: AmbulancepaymentdoneDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
