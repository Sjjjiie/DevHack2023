import 'package:devhack/core/app_export.dart';
import 'package:devhack/widgets/app_bar/appbar_leading_image.dart';
import 'package:devhack/widgets/app_bar/appbar_subtitle.dart';
import 'package:devhack/widgets/app_bar/custom_app_bar.dart';
import 'package:devhack/widgets/custom_elevated_button.dart';
import 'package:devhack/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckoutOrderSummaryScreen extends StatelessWidget {
  CheckoutOrderSummaryScreen({Key? key}) : super(key: key);

  String radioGroup = "";

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
                            SizedBox(height: 10.v),
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
                                      child: Text("swipe on an item to delete",
                                          style: CustomTextStyles
                                              .bodySmallSFProTextBlack90002))
                                ]),
                            SizedBox(height: 3.v),
                            _buildMeasurementRow(context),
                            SizedBox(height: 63.v),
                            _buildDeliveryOrPickUpRow(context),
                            SizedBox(height: 25.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 31.h, right: 47.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5.v, bottom: 23.v),
                                              child: Column(children: [
                                                //choosen button
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3.h,
                                                            vertical: 2.v),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(height: 1.v),
                                                          _buildRadioColumn(
                                                              context)
                                                        ])),
                                                SizedBox(height: 28.v),
                                                SizedBox(width: 48),

                                                //empty button
                                                Container(
                                                    height: 17.adaptSize,
                                                    width: 17.adaptSize,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.h),
                                                        border: Border.all(
                                                            color: appTheme
                                                                .gray50001,
                                                            width: 1.h)))
                                              ])),
                                          Expanded(
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 6.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineBlack90002
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(width: 30),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 1.h),
                                                            child: Text(
                                                                "Delivery",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        SizedBox(height: 18.v),
                                                        Text("Pick up",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        SizedBox(height: 16.v)
                                                      ])))
                                        ]))),
                            SizedBox(height: 33.v),
                            _buildDateRow(context),
                            Spacer(),
                            SizedBox(height: 26.v),
                            CustomElevatedButton(
                                width: 251.h,
                                text: "Next",
                                onPressed: () {
                                  onTapNext(context);
                                })
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
  Widget _buildMeasurementRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage29,
                  height: 69.v,
                  width: 38.h,
                  margin: EdgeInsets.only(bottom: 3.v)),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 14.h, top: 16.v, bottom: 3.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gaviscon Double Action Liquid 150ml",
                                style: CustomTextStyles.bodySmallBlack90002),
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
                                          height: 22.v,
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
  Widget _buildDeliveryOrPickUpRow(BuildContext context) {
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
  Widget _buildRadioColumn(BuildContext context) {
    return CustomRadioButton(
        value: "",
        groupValue: radioGroup,
        onChange: (value) {
          radioGroup = value;
        });
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 31.h, right: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 3.h, bottom: 15.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 31.h,
                            margin: EdgeInsets.only(left: 1.h),
                            child: Text("Date",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium)),
                        _buildNow(context, userName: "Mon, 23 Oct")
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, bottom: 15.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 58.h),
                            child: Text("Time",
                                style: theme.textTheme.bodyMedium)),
                        SizedBox(
                            width: 184.h,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPolygon2,
                                      height: 5.v,
                                      width: 10.h,
                                      margin: EdgeInsets.only(top: 18.v)),
                                  Spacer(),
                                  _buildNow(context, userName: "Now"),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPolygon2,
                                      height: 5.v,
                                      width: 10.h,
                                      margin:
                                          EdgeInsets.only(left: 4.h, top: 17.v))
                                ]))
                      ]))
            ]));
  }

  /// Common widget
  Widget _buildNow(
    BuildContext context, {
    required String userName,
  }) {
    return SizedBox(
        height: 23.v,
        width: 111.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(userName,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: appTheme.black90002))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 111.h, child: Divider(color: appTheme.black90002)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the checkoutCartScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutCartScreen);
  }
}
