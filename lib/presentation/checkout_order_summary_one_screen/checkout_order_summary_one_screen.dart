import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:devhack/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckoutOrderSummaryOneScreen extends StatelessWidget {
  CheckoutOrderSummaryOneScreen({Key? key}) : super(key: key);

  String deliveryOrPickUp = "";

  List<String> radioList = ["lbl_delivery", "lbl_pick_up2"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 753.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(top: 13.v),
                          padding: EdgeInsets.symmetric(vertical: 29.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL25),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 31.h),
                                    child: Text("Cart",
                                        style: theme.textTheme.titleMedium))),
                            SizedBox(height: 1.v),
                            Divider(indent: 13.h),
                            SizedBox(height: 15.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgIwwaSwipe,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.h, top: 5.v, bottom: 2.v),
                                      child: Text(
                                        "swipe on an item to delete",
                                        style: CustomTextStyles
                                            .bodySmallSFProTextBlack90002,
                                      ))
                                ]),
                            SizedBox(height: 3.v),
                            _buildMeasurement(context),
                            SizedBox(height: 60.v),
                            _buildDeliveryOrPickUp(context),
                            SizedBox(height: 25.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapDelivery(context);
                                    },
                                    child: Container(
                                        height: 94.v,
                                        width: 310.h,
                                        margin: EdgeInsets.only(left: 31.h),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: 94.v,
                                                      width: 286.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.h),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: appTheme
                                                                    .black90002
                                                                    .withOpacity(
                                                                        0.03),
                                                                spreadRadius:
                                                                    2.h,
                                                                blurRadius: 2.h,
                                                                offset: Offset(
                                                                    0, 10))
                                                          ]))),
                                              _buildDeliveryOrPickUp1(context)
                                            ])))),
                            SizedBox(height: 33.v),
                            _buildFiftyFour(context),
                            Spacer(),
                            SizedBox(height: 26.v),
                            CustomElevatedButton(width: 251.h, text: "Next")
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgBiCreditCard2FrontFill,
                      height: 16.v,
                      width: 1.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 244.v))
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
  Widget _buildMeasurement(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 12.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage29,
                  height: 78.v,
                  width: 43.h,
                  margin: EdgeInsets.only(bottom: 9.v)),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 14.h, top: 16.v, bottom: 9.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gaviscon Double Action Liquid 150ml",
                              style: CustomTextStyles.bodySmallBlack90002,
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 8.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 9.v),
                                          child: Text("RM30.90",
                                              style: CustomTextStyles
                                                  .bodyMediumIndigo300)),
                                      Container(
                                          height: 23.v,
                                          width: 52.h,
                                          margin: EdgeInsets.only(top: 9.v),
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        width: 52.h,
                                                        margin: EdgeInsets.only(
                                                            bottom: 1.v),
                                                        decoration: AppDecoration
                                                            .fillIndigo
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 1
                                                                              .v),
                                                                  child: Text(
                                                                      "-",
                                                                      style: CustomTextStyles
                                                                          .titleSmallSFProRoundedGray100)),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 5.v,
                                                                      bottom:
                                                                          2.v),
                                                                  child: Text(
                                                                      "+",
                                                                      style: CustomTextStyles
                                                                          .labelMediumSFProRoundedGray100))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 21.h),
                                                        child: Text("1",
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)))
                                              ]))
                                    ]))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildDeliveryOrPickUp(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 189.h,
                  margin: EdgeInsets.only(top: 14.v),
                  child: Text("Delivery or Pick-Up",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium)),
              Container(
                  width: 70.h,
                  margin: EdgeInsets.only(left: 68.h, bottom: 16.v),
                  child: Text("Remove",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumWhiteA700))
            ]));
  }

  /// Section Widget
  Widget _buildDeliveryOrPickUp1(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 4.v),
        child: Column(
          children: [
            CustomRadioButton(
              text: "Delivery",
              value: radioList[0],
              groupValue: deliveryOrPickUp,
              textStyle: theme.textTheme.bodyLarge,
              onChange: (value) {
                deliveryOrPickUp = value;
              },
              padding: EdgeInsets.only(
                  left: 50.0, right: 20.0), // Adjust padding here
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.v, right: 10.h),
              child: CustomRadioButton(
                text: "Pick up",
                value: radioList[1],
                groupValue: deliveryOrPickUp,
                textStyle: theme.textTheme.bodyLarge,
                onChange: (value) {
                  deliveryOrPickUp = value;
                },
                padding: EdgeInsets.only(
                    left: 50.0, right: 20.0), // Adjust padding here
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyFour(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 31.h, right: 23.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(children: [
                    SizedBox(
                        width: 31.h,
                        child: Text("Date",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium)),
                    Container(
                        width: 36.h,
                        margin: EdgeInsets.only(left: 141.h),
                        child: Text("Time",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium))
                  ])),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: SizedBox(
                                width: 111.h,
                                child: Divider(color: appTheme.black90002))),
                        CustomImageView(
                            imagePath: ImageConstant.imgPolygon2,
                            height: 5.v,
                            width: 10.h,
                            margin: EdgeInsets.only(left: 4.h)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: SizedBox(
                                width: 111.h,
                                child: Divider(color: appTheme.black90002))),
                        CustomImageView(
                            imagePath: ImageConstant.imgPolygon2,
                            height: 5.v,
                            width: 10.h,
                            margin: EdgeInsets.only(left: 4.h))
                      ])),
              SizedBox(height: 16.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the checkoutOrderSummaryScreen when the action is triggered.
  onTapDelivery(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutOrderSummaryScreen);
  }
}
